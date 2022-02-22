@ECHO off
color A
pyinstaller --onefile main.py downloader.py filemanagement.py installer.py --add-data "bg.png;." --add-data "default_manifest.json;."
ECHO [COMPILER]
move dist/main.exe ../installer.exe
pause
REM --add-data "source;dest"
REM if dest is '.' then we need to in-python access that data through the  temp folder --onefile packs the runtime environment into