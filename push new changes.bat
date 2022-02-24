@ECHO off
ECHO make commit note now
set /p bruh=_
git add --all
git commit -m "%bruh%"
ECHO ready to push
pause
git push https://github.com/H0rologium/Beyond-the-End-of-the-World-Modpack- 1.16.5
pause