write-host "Downloading Python 3.5..."
wget https://www.python.org/ftp/python/3.5.4/python-3.5.4-amd64.exe -OutFile python-3.5.4-amd64.exe
write-host "Installing Python 3.5..."
cmd /c python-3.5.4-amd64.exe /quiet TargetDir=c:\Python35 InstallAllUsers=1 PrependPath=1
write-host "Downloading Git for Windows..."
wget https://github.com/git-for-windows/git/releases/download/v2.21.0.windows.1/Git-2.21.0-64-bit.exe -OutFile Git-2.21.0-64-bit.exe
write-host "Installing Git for Windows..."
write-host "[Setup]`nLang=default`nDir=C:\Program Files\Git`nGroup=Git`nNoIcons=0`nSetupType=default`nComponents=ext,ext\shellhere,ext\guihere,gitlfs,assoc,assoc_sh`nTasks=`nEditorOption=VIM`nCustomEditorPath=`nPathOption=Cmd`nSSHOption=OpenSSH`nCURLOption=OpenSSL`nCRLFOption=LFOnly`nBashTerminalOption=MinTTY`nPerformanceTweaksFSCache=Enabled`nUseCredentialManager=Enabled`nEnableSymlinks=Disabled" | Out-File -FilePath git.inf
cmd /c Git-2.21.0-64-bit.exe  /VERYSILENT /SAVEINF=".\git.inf"
write-host "Updating PATH environment variable..."
$oldPath=(Get-ItemProperty -Path 'Registry::HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Session Manager\Environment' -Name PATH).Path
$newPath="C:\Python35;C:\Python35\Scripts;C:\Program Files\Git\cmd;" + $oldPath
Set-ItemProperty -Path 'Registry::HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Session Manager\Environment' -Name PATH -Value $newPath
$env:path=$newPath
gci env:path
python -m pip install --upgrade pip wheel markdown==3.2.1 setuptools<45.0.0 cx_Freeze==6.3
exit
