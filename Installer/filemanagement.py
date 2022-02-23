import shutil
import os
#This class handles file operations for the installer


def message(msg):
    print(msg)
    return

def moveToMCDirectory(filename, dirr):
    shutil.move(f"{os.getcwd()}/{filename}", f"{dirr}/mods/{filename}")
    return
    
def getDownloadedMods(directory):
    print(os.system(f"dir {directory}/mods"))
    return
