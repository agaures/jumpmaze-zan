@ECHO OFF

CALL "%CD%\utilities\variables.bat"
CALL "%CD%\utilities\mkvers.bat"

PUSHD jm_assets\pk3
%SEVENZAEXE% a -tzip "%START%\jm_assets-%FILEVERSION%.pk3" * -r -xr!*.dbs -xr!*.backup1 -xr!*.backup2 -xr!*.backup3 -xr!*.bak -xr!.gitignore
POPD