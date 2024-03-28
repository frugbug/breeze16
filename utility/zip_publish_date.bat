@echo off
cd..
for /f "tokens=1* delims=" %%a in ('date /T') do set datestr=%%a
set NAME=breeze16_%date:~-4,4%.%date:~7,2%.%date:~-10,2%%.zip
7z a %NAME% pack.mcmeta pack.png assets
7z d %NAME% panorama_*.png -r
move %NAME% versions_archive