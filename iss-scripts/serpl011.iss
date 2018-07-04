; Script created by SparrOSDeveloperTeam
; https://github.com/SparrOSDeveloperTeam

; Setup program compiled in Inno Setup Compiler 5.5.9

[Setup]
AppName=Driver for ARM PL011 UART Devices
AppVerName=serpl011 pwm Device Driver
AppCopyright=Setup created by SparrOSDeveloperTeam
DefaultDirName={pf}\woa-driverdb\serpl011
LicenseFile=license.txt
MinVersion=10.0
; This means anybody with any Windows 10 ARM64 build on RaspberryPi
; can install this driver.

[Files]
Source: "serpl011.cat"; DestDir: "{app}"
Source: "SerPL011.inf"; DestDir: "{app}"
Source: "SerPL011.sys"; DestDir: "{app}"

[Run]
Filename: "{sys}\rundll32.exe"; Parameters: "setupapi,InstallHinfSection DefaultInstall 128 {app}\SerPL011.inf"; WorkingDir: "{app}"
