; Script created by SparrOSDeveloperTeam
; https://github.com/SparrOSDeveloperTeam

; Setup program compiled in Inno Setup Compiler 5.5.9

[Setup]
AppName=Driver for DecaWave USB Devices
AppVerName=dwUSB Device Driver
AppCopyright=Setup created by SparrOSDeveloperTeam
DefaultDirName={pf}\woa-driverdb\dwusb
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
Source: "dwusb.cat"; DestDir: "{app}"; Components: driverfiles
Source: "dwusb.inf"; DestDir: "{app}"; Components: driverfiles
Source: "dwusb.pdb"; DestDir: "{app}"; Components: driverfiles
Source: "dwusb.sys"; DestDir: "{app}"; Components: driverfiles
Source: "source\buildme.cmd"; DestDir: "{app}\source"; Components: sources
Source: "source\Device.c"; DestDir: "{app}\source"; Components: sources
Source: "source\Device.h"; DestDir: "{app}\source"; Components: sources
Source: "source\Driver.c"; DestDir: "{app}\source"; Components: sources
Source: "source\Driver.h"; DestDir: "{app}\source"; Components: source
Source: "source\dwc_otg_regs.h"; DestDir: "{app}\source"; Components: source
Source: "source\dwusb.inf"; DestDir: "{app}\source" ; Components: source
Source: "source\dwusb.vcxproj"; DestDir: "{app}\source"; Components: source
Source: "source\dwusb.vcxproj.filters"; DestDir: "{app}\source"; Components: source
Source: "source\dwusb.vcxproj.user"; DestDir: "{app}\source"; Components: source
Source: "source\Public.h"; DestDir: "{app}\source"; Components: source
Source: "source\Queue.c"; DestDir: "{app}\source"; Components: source
Source: "source\Queue.h"; DestDir: "{app}\source"; Components: source
Source: "source\README.md"; DestDir: "{app}\source"; Components: source
Source: "source\ReadMe.txt"; DestDir: "{app}\source"; Components: source
Source: "source\Trace.h"; DestDir: "{app}\source"; Components: source
Source: "source\ucxstub.lib"; DestDir: "{app}\source"; Components: source
Source: "source\UsbDevice.c"; DestDir: "{app}\source"; Components: source

[Run]
Filename: "{sys}\rundll32.exe"; Parameters: "setupapi,InstallHinfSection DefaultInstall 128 {app}\dwusb.inf"; WorkingDir: "{app}"
