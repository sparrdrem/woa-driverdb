; Script created by SparrOSDeveloperTeam
; https://github.com/SparrOSDeveloperTeam

; Setup program compiled in Inno Setup Compiler 5.5.9

[Setup]
AppName=Driver for bcm2836 pwm Devices
AppVerName=bcm2836 pwm Device Driver
AppCopyright=Setup created by SparrOSDeveloperTeam
DefaultDirName={pf}\woa-driverdb\bcm2836pwm
LicenseFile=license.txt
MinVersion=10.0
; This means anybody with any Windows 10 ARM64 build on RaspberryPi
; can install this driver.

[Files]
Source: "bcm2836pwm.cat"; DestDir: "{app}"
Source: "bcm2836pwm.inf"; DestDir: "{app}"
Source: "bcm2836pwm.sys"; DestDir: "{app}"

[Run]
Filename: "{sys}\rundll32.exe"; Parameters: "setupapi,InstallHinfSection DefaultInstall 128 {app}\bcm2836pwm.inf"; WorkingDir: "{app}"