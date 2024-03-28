@echo off

for /f "delims=" %%f in ('dir /a:-d /s /b ^| find /i "_e."') do (
	echo "%%~df%%~pf%%~nf%%~xf"
	copy "spec_base.png" "%%~df%%~pf%%~nf_s%%~xf"
)
pause