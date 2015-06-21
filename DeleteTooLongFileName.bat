@ECHO OFF

color 70
mkdir deleteTempFolder
set /p pathName=Path to folder which need to delete :%=%
@echo %pathName%
if exist %pathName% (
	echo file is found
	robocopy deleteTempFolder %pathName% /s /mir
	rmdir deleteTempFolder
	rmdir %pathName%
) else (
    color 7C
    echo file doesn't exist
    cd %pathName% 
)

pause