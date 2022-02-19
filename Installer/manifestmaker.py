from filemanagement import *
import json
import os


def main():
    values = []
    #Replace json if need
    if os.path.exists("manifest.json"):
        print("Deleting old manifest.json!")
        os.remove("manifest.json")
        

    #Get values
    src = open("MODLIST.txt", "r")
    for line in src:
        if "https://" in line:
            #                   line[:len(line)-9] for whole url  len(line)-2
            values.append((line[line.rindex("/")+1:line.rindex("-")], line[line.rindex("-")+1:]))
    #Load 
    with open("default_manifest.json", "r") as f:
        manifest = json.load(f)
    f.close()
    #manifest = defaultDict
    files = manifest["files"]
    for elements in values:
        manifest["files"].append('{"projectID": '+ elements[1] +',"fileID": "'+ elements[0] +'","required": true}')
    with open("manifest.json", "w") as z:
       json.dump(manifest,z)
    z.close()


if __name__=='__main__':
    main()

