@echo off
set /p MESSAGE="Commit message: "
git add .
git commit -m "%MESSAGE%"
echo Changes commited under the mesage: "%MESSAGE%"
pause