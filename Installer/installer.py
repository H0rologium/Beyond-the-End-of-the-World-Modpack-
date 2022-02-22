#This class gets the repo and sets up any non-jar files we need in place.
#We can't really use a lot of os stuff here, because the '.' in '.minecraft' confuses
#OS making it think the folder is a file.
import shutil as shoot
import os

def setupWorkingDirectory(rootMCPath):
    print("Setting up directory")
    #Step into the files directory
    os.chdir(f"{os.getcwd()}/files")
    #Copy everything over to .minecraft
    #rootMCPath will end us just inside the folder, so work from there

    #configs
    os.system(f"mkdir {rootMCPath}/config")
    print("[CONFIGS] Moving configs")
    for configs in os.listdir("config"):
        print(f"Moving {configs}")
        shoot.move(f"{os.getcwd()}/config/{configs}",f"{rootMCPath}/config/{configs}")
    #defaultconfigs
    os.system(f"mkdir {rootMCPath}/defaultconfigs")
    print("[CONFIGS] Moving defaultconfigs")
    for defaultconfigs in os.listdir("defaultconfigs"):
        print(f"Moving {defaultconfigs}")
        shoot.move(f"{os.getcwd()}/defaultconfigs/{defaultconfigs}",f"{rootMCPath}/defaultconfigs/{defaultconfigs}")
    #dynmap
    os.system(f"mkdir {rootMCPath}/dynmap")
    for maps in os.listdir("dynmap"):
        print(f"[MAPS] Moving {maps}")
        shoot.move(f"{os.getcwd()}/dynmap/{maps}",f"{rootMCPath}/dynmap/{maps}")
    #scripts
    os.system(f"mkdir {rootMCPath}/scripts")
    #apply options.txt
    print(f"[GENERAL] Moving options.txt") 
    shoot.move(f"{os.getcwd()}/options.txt",f"{rootMCPath}/options.txt")
    print("====Directory setup complete====")
    os.system(f"ren {rootMCPath}/mods {rootMCPath}/mods_old")
    os.system(f"mkdir {rootMCPath}/mods")
    os.chdir("..")
    return
