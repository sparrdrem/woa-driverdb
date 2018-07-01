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

# Choosing the Best Product that Suits Your Needs

Below is a list of products and what the product is capable of:

| Products:                      | Windows On Arm Builder Express | Windows On Arm Builder Pro | Windows On Arm Builder PE |
| :---:                          | :---:                          | :---:                      | :---:                     |
| Installs UEFI Bios for RPi     | :heavy_check_mark:             | :heavy_check_mark:         | :heavy_check_mark:        |
| Installs portable MiniTool     | :heavy_check_mark:             | :heavy_check_mark:         | :heavy_check_mark:        |
| Comes with RPi Drivers         | :heavy_check_mark:             | :heavy_check_mark:         | :heavy_check_mark:        |
| Flashes WIM to SD Card         | :heavy_check_mark:             | :heavy_check_mark:         | :heavy_check_mark:        |
| Creates EFI Files              | :heavy_check_mark:             | :heavy_check_mark:         | :heavy_check_mark:        |
| Edits BCD Automatically        | :heavy_check_mark:             | :heavy_check_mark:         | :heavy_check_mark:        |
| Removes unnecessary components | :heavy_multiplication_x:       | :heavy_check_mark:         | :heavy_multiplication_x:  |
| Removes unnecessary services   | :heavy_multiplication_x:       | :heavy_check_mark:         | :heavy_multiplication_x:  |
| Adds tweaks to registry on WoA | :heavy_multiplication_x:       | :heavy_check_mark:         | :heavy_multiplication_x:  |
| Creates backup of make batch   | :heavy_multiplication_x:       | :heavy_check_mark:         | :heavy_multiplication_x:  |
| Create WinPE Environment       | :heavy_multiplication_x:       | :heavy_multiplication_x:   | :heavy_check_mark:        |
| Community Support              | :heavy_check_mark:             | :heavy_multiplication_x:   | :heavy_multiplication_x:  |
| Pricing                        | $0.00 (Free)                   | $2.50 (+tax in some areas) | $0.00 (Free)

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
