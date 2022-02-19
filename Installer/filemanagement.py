import shutil

def message(msg):
    print(msg)
    return

def moveToMCDirectory(filename):
    shutil.move(filename, "C:/Users/horo/AppData/Roaming/.minecraft/mods/"+filename)
    return
    

