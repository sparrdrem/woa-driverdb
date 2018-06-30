# woa-flasher

Flashes Windows on ARM to your SD Card for Raspberry Pi

# Prerequisites

* x86 PCs Only: <a href="http://www.microsoft.com/en-us/download/details.aspx?id=29">Visual C++ Redistributable 2008</a>/<a href="http://www.microsoft.com/en-us/download/details.aspx?id=5582">Visual C++ Redistributable 2008 SP1</a>
* amd64 PCs Only: <a href="http://www.microsoft.com/en-us/download/details.aspx?id=15336">Visual C++ Redistributable 2008</a>/<a href="http://www.microsoft.com/en-us/download/details.aspx?id=2092">Visual C++ Redistributable 2008 SP1</a>
* ia64 PCs Only: <a href="http://www.microsoft.com/en-us/download/details.aspx?id=4887">Visual C++ Redistributable 2008</a>/<a href="http://www.microsoft.com/en-us/download/details.aspx?id=19823">Visual C++ Redistributable 2008 SP1</a>
* Windows Vista/7: <a href="http://www.microsoft.com/en-us/download/details.aspx?id=5753">Windows AIK</a> or Windows OPK
* Windows 8/8.1/10: <a href="https://docs.microsoft.com/en-us/windows-hardware/get-started/adk-install">Windows ADK</a> Builds
* `dism.exe`
* `bcdedit.exe`

# How it Works

When you download the binary files. you will get a `builder.exe` app and a `rules-make.txt` file. At this point you should have already downloaded Raspberry Pi 3 UEFI Bios, RPi3 Windows Stuff files (credit goes to andreiw), mounted the install.wim file to mount, created the following partitions:

| Partition | Size       | Type    | Label   |
| :---:     | :---:      | :---:   | :---:   |
| Fat32     | ~90MiB     | Primary | BOOT    |
| NTFS      | ~16-128GiB | Primary | Windows |

and written the Raspberry Pi drivers to the wim dir.

To flash it you will need to make some edits to the txt file. Replace
```
mount
```
with the name of the folder that you created. Replace
```
G:
```
with the letter of the NTFS partition. And finally replace
```
E:
```
with the letter of the Fat32 partition.
