# woa-driverdb

Raspberry Pi OEM Drivers for the Windows On Arm Project.

## Building Setup from Source

Install <a href="http://jrsoftware.org/download.php/is.exe?site=1">Inno Setup 5.6.1</a> or later. Download the <a href="https://github.com/sparrdrem/woa-driverdb/archive/master.zip">latest source code</a> and compile the ISS scripts.

## Building Drivers from Source

Download the <a href="https://developer.microsoft.com/en-us/windows/hardware/license-terms-EWDK">Enterprise Windows Driver Kit with Visual Studio 15.x</a> iso and open the `buildme.cmd` file in command prompt.

## List of Drivers

Below is a list of drivers:

* bcm2836pwm
* bcm2836sdhc (should already be installed when you flashed `install.wim` to your sdhc)
* dwusb (should already be installed when you flashed `install.wim` to your sdhc)
* rpisdhc
* rpiwav
* serpl011
