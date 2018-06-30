# woa-flasher

Flashes Windows on ARM to your SD Card for Raspberry Pi

# Prerequisites

* Visual C++ Redistributable 2008/ Visual C++ Redistributable 2008 SP1
* Windows AIK/OPK for Vista/7, Windows ADK for 8/8.1/10
* `dism.exe
* `bcdedit.exe`

# How it Works

When you download the binary files. you will get a builder.exe app and a rules-make.txt file. At this point you should have already downloaded Raspberry Pi 3 UEFI Bios, RPi3 Windows Stuff files (credit goes to andreiw), mounted the install.wim file to mount, created the following partitions:

| Partition | Size       | Type    | Label   |
| :---:     | :---:      | :---:   | :---:   |
| Fat32     | ~90MiB     | Primary | BOOT    |
| NTFS      | ~16-128GiB | Primary | Windows |

and written the Raspberry Pi drivers to the wim dir.

To flash it you will need to make some edits. Replace
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
