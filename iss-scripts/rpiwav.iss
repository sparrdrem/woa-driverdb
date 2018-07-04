; Script created by SparrOSDeveloperTeam
; https://github.com/SparrOSDeveloperTeam

; Setup program compiled in Inno Setup Compiler 5.5.9

[Setup]
AppName=Driver for Raspberry Pi Sound Devices
AppVerName=rpiwav Device Driver
AppCopyright=Setup created by SparrOSDeveloperTeam
DefaultDirName={pf}\woa-driverdb\rpiwav
LicenseFile=license.txt
MinVersion=10.0
; This means anybody with any Windows 10 ARM64 build on RaspberryPi
; can install this driver.

[Files]
Source: "serpl011.cat"; DestDir: "{app}"
Source: "rpiwav.inf"; DestDir: "{app}"
Source: "rpiwav.sys"; DestDir: "{app}"

[Run]
Filename: "{sys}\rundll32.exe"; Parameters: "setupapi,InstallHinfSection DefaultInstall 128 {app}\rpiwav.inf"; WorkingDir: "{app}"
