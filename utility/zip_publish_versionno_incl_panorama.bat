@echo off
cd..
set /P ver="[Version: e.g. 0.1-alpha4 or 2.0.1 ] "
set NAME=breeze16_%ver%.zip
7z a %NAME% pack.mcmeta pack.png assets
move %NAME% versions_archive