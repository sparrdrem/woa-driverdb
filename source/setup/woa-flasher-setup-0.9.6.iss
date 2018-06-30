; Script created by SparrOSDeveloperTeam
; https://github.com/SparrOSDeveloperTeam

; Setup program compiled in Inno Setup Compiler 5.5.9

[Setup]
AppName=WindowsOnArm Flasher
AppVerName=WindowsOnArm Flasher Beta 0.9.6
AppCopyright=Copyright © 2018 SparrDrem
DefaultDirName={pf}\woa-flasher
DefaultGroupName=WindowsOnArm Flasher
LicenseFile=license.txt
Encryption=Yes
MinVersion=6.1

[Files]
Source: builder.exe DestDir: {app}
Source: rules-make.txt DestDir: {app}
Source: 298fhe90.cmd DestDir: {app}
