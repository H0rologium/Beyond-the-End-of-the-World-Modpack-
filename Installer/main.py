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

"""
ALTHOUGHT IT WOULD BE REALLY NICE TO GIVE ME CREDIT :)
"""

#Main class for my custom 'modpack installer' program
from filemanagement import *
from manifestmaker import *
from downloader import *
from installer import *
from tkinter import *
#Only for me to remember ttk better
from tkinter import ttk
from tkinter import filedialog as tkfd
import os
from PIL import Image, ImageTk
import subprocess as sub
import webbrowser
import time as t


#Fixes pyinstaller packaging issues
def resource_path(relative_path):
    """ Get absolute path to resource, works for dev and for PyInstaller """
    try:
        # PyInstaller creates a temp folder and stores path in _MEIPASS
        base_path = sys._MEIPASS
    except Exception:
        base_path = os.path.abspath(".")

    return os.path.join(base_path, relative_path)
#Defines all of our window properties
def createWindowInstance():
    #Hides the window
    #uiobj.withdraw()
    global uiobj 
    global forgeVersion
    global mcVersion
    global mcPath
    uiobj = Tk()
    mcPath = [StringVar(uiobj,""),""]
    bgfromTemp = resource_path("bg.png")
    defmanfromTemp = resource_path("default_manifest.json")
    
    bgi = ImageTk.PhotoImage(file=bgfromTemp)
    background_label_image = Label(uiobj, image=bgi)
    background_label_image.place(x=0,y=0,relwidth=1,relheight=1)
    #Gives us left/right dividers, like DIV in html
    frame = Frame(uiobj)
    frame.pack()
    tFrame = Frame(uiobj)
    tFrame.pack(side='top')
    lFrame = Frame(uiobj)
    lFrame.pack(side='left')
    rFrame = Frame(uiobj)
    rFrame.pack(side='right')

    uiobj.geometry("920x630")
    
    btn3 = ttk.Button(lFrame,text = "0. Make SURE you have Java installed", command=getJava)
    btn3.pack()
    btn1 = ttk.Button(lFrame,text = "1. Get Forge Mod Loader\n(if the path in the installer\nlooks ok, just press \"ok\")",command=downloadFML)
    btn1.pack(padx=10,pady=10)
    user = os.getlogin()
    print("User is: " + user)
    mcPath[0].set(f"C:/Users/{user}/AppData/Roaming/.minecraft")
    global lbl
    lbl = ttk.Label(lFrame, text = mcPath[0].get())
    lbl.pack()
    btn4 = ttk.Button(lFrame, text = "2. ^ Press me if minecraft isnt installed\n in this location",command=pickMCDir)
    btn4.pack(padx=10,pady=10)
    btn0 = ttk.Button(lFrame,text = "3. (PRESS ME WHEN PATH IS OK)\nSetup Working Directory", command=lambda: setupWorkingDirectory(mcPath))
    btn0.pack(padx=10,pady=10)
    btn2 = ttk.Button(lFrame,text = "4. Download Modlist",command=lambda: downloadMods("manifest.json"))
    btn2.pack(padx=10,pady=10)
    #Right side
    out = Text(rFrame,width=32,wrap='word')
    out.pack()

    #Get modpack name to be fancy for title
    if not os.path.isdir("files"):
        le0 = ttk.Label(tFrame, text="WARNING files FOLDER NOT FOUND, INSTALLER WILL NOT FUNCTION",foreground="red",background="black")
        le0.pack()
    if os.path.isfile("manifest.json"):
        with open("manifest.json","r") as f:
            manifest = json.load(f)
    else:
        with open(defmanfromTemp,"r") as f:
            manifest = json.load(f)
        le = ttk.Label(tFrame, text="WARNING: COULD NOT FIND manifest.json THIS HAS A HIGH CHANCE OF CREATING ISSUES DOWNLOADING MODS",foreground="white",background="black")
        le.pack()
    if not os.path.isfile("MODLIST.txt"):
        le2 = ttk.Label(tFrame, text = "WARNING: MODLIST.txt COULD NOT BE FOUND. YOUR MODS WILL NOT DOWNLOAD!!!",foreground="red",background="black")
        le2.pack()
    titleinfo = (manifest["name"],manifest["minecraft"]["version"])
    forgeVersion = manifest["minecraft"]["modLoaders"][0]["id"]
    mcVersion = titleinfo[1]
    
    uiobj.title("Horologium's Modpack Installer: " + str(titleinfo[0]) + " for " + str(mcVersion) + "/" + str(forgeVersion))
    #Last call, creates and keeps the final window open
    uiobj.mainloop()
    return

# Download Forge installer
# Get the first primary Forge version, and extract the version number
def downloadFML():
    print(f"Getting Forge version {forgeVersion}...")
    if not os.path.isfile(f"java forge-{mcVersion}-{forgeVersion}-installer.jar"):
        modloader = rq.get(f"https://files.minecraftforge.net/maven/net/minecraftforge/forge/{mcVersion}-{forgeVersion}/forge-{mcVersion}-{forgeVersion}-installer.jar")
        with open(f"forge-{mcVersion}-{forgeVersion}-installer.jar", "wb") as f:
            f.write(modloader.content)
        print(f"Forge version {forgeVersion} downloaded!")
        print("Waiting for download to finish, its 2:00 am and i dont wanna relearn async or smthn")
        t.sleep(5)
        print("Dang ok we got it now")
    os.system(f"java -jar forge-{mcVersion}-{forgeVersion}-installer.jar")
    #os.remove(f"java forge-{mcVersion}-{forgeVersion}-installer.jar.log")
    #os.remove(f"java forge-{mcVersion}-{forgeVersion}-installer.jar")
    return
#Has the user pick their MC folder
def pickMCDir():
    global mcPath
    global lbl
    mcPath[1] = tkfd.askdirectory()
    print(f"Directory changed to: {mcPath[1]}")
    mcPath[0].set(mcPath[1])
    lbl.config(text=mcPath[0].get())
    return
#Shows them how to get Java
def getJava():
    results = sub.Popen('java -version', stdout=sub.PIPE, stderr=sub.STDOUT)
    results = results.stdout.read().decode('utf-8')
    print(results)
    if "SE Runtime Environment" in results:
        print("Java is already installed, you are good to go")
    else:
        print("Nuh-uh, gotta go get that JAVA")
        webbrowser.open("https://javadl.oracle.com/webapps/download/AutoDL?BundleId=245807_df5ad55fdd604472a86a45a217032c7d", new = 2)
    return
def main():
    #Our tk object
    createWindowInstance()
    



if __name__=='__main__':
    main()
