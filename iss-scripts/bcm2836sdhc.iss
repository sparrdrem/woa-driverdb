; Script created by SparrOSDeveloperTeam
; https://github.com/SparrOSDeveloperTeam

; Setup program compiled in Inno Setup Compiler 5.5.9

[Setup]
AppName=Driver for bcm2836 SDHC Devices
AppVerName=bcm2836 SDHC Device Driver
AppCopyright=Setup created by SparrOSDeveloperTeam
DefaultDirName={pf}\woa-driverdb\bcm2836sdhc
LicenseFile=license.txt
MinVersion=10.0
; This means anybody with any Windows 10 ARM64 build on RaspberryPi
; can install this driver.

[Types]
Name: "drivers"; Description: "Drivers Only"
Name: "source"; Description: "Drivers + Source"

[Components]
Name: "driverfiles"; Description: "Raspberry Pi Drivers"; Types: drivers source; Flags: fixed
Name: "sources"; Description: "Source files (require EWDK ISO)"; Types: "source"

[Files]
Source: "bcm2836sdhc.cat"; DestDir: "{app}"; Components: driverfiles
Source: "bcm2836sdhc.inf"; DestDir: "{app}"; Components: driverfiles
Source: "bcm2836sdhc.pdb"; DestDir: "{app}"; Components: driverfiles
Source: "bcm2836sdhc.sys"; DestDir: "{app}"; Components: driverfiles
Source: "source\bcm2836sdhc.c"; DestDir: "{app}\source"; Components: sources
Source: "source\bcm2836sdhc.h"; DestDir: "{app}\source"; Components: sources
Source: "source\bcm2836sdhc.inf"; DestDir: "{app}\source"; Components: sources
Source: "source\bcm2836sdhc.pkg.xml"; DestDir: "{app}\source"; Components: sources
Source: "source\bcm2836sdhc.rc"; DestDir: "{app}\source"; Components: source
Source: "source\buildme.cmd"; DestDir: "{app}\source"; Components: source
Source: "source\README.md"; DestDir: "{app}\source" ; Components: source
Source: "source\sources.props"; DestDir: "{app}\source"; Components: source
Source: "source\trace.h"; DestDir: "{app}\source"; Components: source

[Run]
Filename: "{sys}\rundll32.exe"; Parameters: "setupapi,InstallHinfSection DefaultInstall 128 {app}\bcm2836sdhc.inf"; WorkingDir: "{app}"