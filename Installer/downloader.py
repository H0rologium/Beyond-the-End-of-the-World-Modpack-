"""
The MIT License (MIT)

Copyright (c) 2020 PistolRcks

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
"""
# HUGE THANKS TO PISTOLRCKS ON GITHUB FOR PROVIDING THE ORIGNAL 
import re
import os
import requests as rq
import json
import sys
from filemanagement import *
import time
import webbrowser

# !IMPORTANT!
# some of the API calls are being made without verifying SSL certificates
# this was originally for testing purposes. PLEASE if you're going to use
# this TURN THEM BACK ON

global mcdir2

global failedDownloads
failedDownloads = []

def downloadAllModsbyID(PROJECT_IDS, FILE_IDS, VERSION="none"):
    global failedDownloads
    global mcdir2
    print("Starting download of mods...")
    # Download mods (should be the same length as the file ids
    for i, id in enumerate(PROJECT_IDS):
        time.sleep(1)
        ticker = f"[{i+1}/{len(PROJECT_IDS)}]" # For showing which mod we're on

        # Get mod name, so it looks nice
        try:
            data = json.loads(rq.get(f"https://curse.nikky.moe/api/addon/{id}", verify=False).content) # Put the request's data into a Python-readable format
            time.sleep(1)
            modName = data["name"]
        except json.decoder.JSONDecodeError as e:
            print(e)
            continue
        # Get mod's latest version for this game version
        print(f"{ticker} Getting mod download link for mod {modName} (ID: {id})...")
        try:
            data = json.loads(rq.get(f"https://curse.nikky.moe/api/addon/{id}/files", verify=False).content)
        except json.decoder.JSONDecodeError as e :#Some sort of issue occured and the mod cannot be reached.
            failedDownloads.append((modName,id,FILE_IDS[i]))
            print(f"========================================\n{modName} failed to respond! Noting for later...{e}\n{ticker} Moving on to next element.\n========================================")
            continue
        # Get the correct version matching the file ID for this mod
        correctVersion = {}
        try:
            correctVersion = [candidate for candidate in data if int(FILE_IDS[i]) == candidate["id"]][0]
            print(f"{ticker} Found correct mod version (File ID: {FILE_IDS[i]} for mod {modName} (ID: {id})!")
            if os.path.isfile(correctVersion["fileName"]): # Don't redownload mods we may already have downloaded
                print(f"{ticker} Mod {modName} (ID: {id}) already downloaded! Skipping.")
                moveToMCDirectory(correctVersion["fileName"],mcdir2)
            else:
                print(f"{ticker} Starting download of mod {modName} (ID: {id})...")
                download = rq.get(correctVersion["downloadUrl"], verify=False)
                assert download.status_code == 200 # Make sure we're good
                with open(correctVersion["fileName"], "wb") as f:
                    f.write(download.content)
                moveToMCDirectory(correctVersion["fileName"],mcdir2)
                print(f"{ticker} Finished downloading mod {modName} (ID: {id})!")
        except:
            print(f"========================================\n{ticker} Couldn't find a matching file ID ({FILE_IDS[i]}) for mod {modName} (ID: {id}).\n========================================")
            failedDownloads.append((modName,id,FILE_IDS[i]))
        # Download the mod
    print(f"Finished downloading all {len(PROJECT_IDS)} mods!")
    print(f"The following mods failed to download completely: {failedDownloads}")
    #getDownloadedMods(mcdir2)
    retryFailedDownloads()

def retryFailedDownloads():
    global failedDownloads
    for failedmod in failedDownloads:
        print(f"Rectifying failed download {failedmod[0]}")
        try:
            data = json.loads(rq.get(f"https://curse.nikky.moe/api/addon/{failedmod[1]}/files/{failedmod[2]}", verify=False).content)
            datasub = [x for x in data if int(failedmod[2]) == x["id"]][0]["downloadUrl"]
            fname = [y for y in data if int(failedmod[2]) == y["id"]][0]["fileName"]
            print("Attempting re-download")
            attempt = rq.get(datasub, verify=False)
            assert attempt.status_code == 200 # Make sure we're good
        except json.decoder.JSONDecodeError as e :#Some sort of issue occured and the mod cannot be reached.
            print("Nobody can save you now, you need to directly download the mod!")
            webbrowser.open(f"https://curse.nikky.moe/api/addon/{failedmod[1]}/files/{failedmod[2]}", new = 2)
        with open(fname, "wb") as f:
            f.write(attempt.content)
        moveToMCDirectory(fname,mcdir2)
        print(f"Finished downloading mod {fname} (ID: {failedmod[2]})!")
    return


def downloadMods(manifestName="manifest.json",mcdirin="none_provided"):
    global mcdir2
    mcdir2 = mcdirin
    # Load project IDs and version number
    manifest = ""
    # Make sure the manifest file was given
    # See https://github.com/PistolRcks/curseforge-mass-downloader/wiki/Structuring-manifest.json for more info
    try: assert manifestName
    except:
        print("Manifest file not provided. Please provide a modlist in .json format.\nSee https://github.com/PistolRcks/curseforge-mass-downloader/wiki/Structuring-manifest.json for more info.")
        sys.exit()
    # Make sure the manifest file exists and is a json file
    try: assert os.path.isfile(manifestName) and not re.search(r"\.json$", manifestName) == None
    except:
        print(f"Manifest file {manifestName} does not exist and/or is not in .json format. Please provide a modlist in .json format.\nSee https://github.com/PistolRcks/curseforge-mass-downloader/wiki/Structuring-manifest.json for more info.")
        sys.exit()
    # Open the thing
    with open(manifestName, "r") as f:
        manifest = json.load(f)

    FILE_IDS = [file["fileID"] for file in manifest["files"]]
    PROJECT_IDS = [file["projectID"] for file in manifest["files"]] # Project IDs of the mods, as shown on the mod page
    VERSION = manifest["minecraft"]["version"] # Name of the game version
    downloadAllModsbyID(PROJECT_IDS,FILE_IDS,VERSION)
    return

