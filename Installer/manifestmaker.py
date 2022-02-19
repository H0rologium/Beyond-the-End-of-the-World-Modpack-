from filemanagement import *
import json



def main():
    values = []
    #Get values
    src = open("MODLIST.txt", "r")
    for line in src:
        if "https://" in line:
            #                   line[:len(line)-9] for whole url
            values.append((line[len(line)-15:len(line)-8], line[len(line)-7:len(line)-2]))
    #Load file
    with open("manifest.json", "r") as f:
        manifest = json.load(f)
    files = manifest["files"]
    for elements in values:
        manifest["files"].append('{"projectID": '+ elements[0] +',"fileID": "'+ elements[1] +'","required": true}')
    with open("manifest.json", "w") as f:
       json.dump(manifest,f)



if __name__=='__main__':
    main()


""" Default dict

{
  "minecraft": {
    "version": "1.18.1",
    "modLoaders": [
      {
        "id": "4",
        "primary": true
      }
    ]
  },
  "manifestType": "minecraftModpack",
  "manifestVersion": 1,
  "name": "Meatball Craft",
  "version": "0.2.0",
  "author": "Sig",
  "projectID": 238222,
  "files": [
  ]
}

"""
