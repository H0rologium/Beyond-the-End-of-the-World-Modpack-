import shutil
import os
#This class handles file operations for the installer


def message(msg):
    print(msg)
    return

def moveToMCDirectory(filename):
    shutil.move(filename, "C:/Users/horo/AppData/Roaming/.minecraft/mods/"+filename)
    return
    
def getDownloadedMods(directory = "C:/Users/horo/AppData/Roaming/.minecraft/mods/"):
    print(os.listdir(directory))
    return
