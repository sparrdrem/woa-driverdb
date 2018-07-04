; Script created by SparrOSDeveloperTeam
; https://github.com/SparrOSDeveloperTeam

; Setup program compiled in Inno Setup Compiler 5.5.9

[Setup]
AppName=Driver for Raspberry Pi SDHC Devices
AppVerName=rpisdhc Device Driver
AppCopyright=Setup created by SparrOSDeveloperTeam
DefaultDirName={pf}\woa-driverdb\rpisdhc
LicenseFile=license.txt
MinVersion=10.0
; This means anybody with any Windows 10 ARM64 build on RaspberryPi
; can install this driver.

[Files]
Source: "rpisdhc.cat"; DestDir: "{app}"
Source: "rpisdhc.inf"; DestDir: "{app}"
Source: "rpisdhc.sys"; DestDir: "{app}"

[Run]
Filename: "{sys}\rundll32.exe"; Parameters: "setupapi,InstallHinfSection DefaultInstall 128 {app}\rpisdhc.inf"; WorkingDir: "{app}"
