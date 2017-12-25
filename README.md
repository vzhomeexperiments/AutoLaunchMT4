# AutoLaunchMT4

Tool to make sure that MT4 starts after PC reboot
Source: [ForexBoat.com](www.forexboat.com/vpssetup/)

# Content:

* AutoLogin Windows
* AutoLaunchMT4
* Rebootlog

# How to establish Autologin

1. Add your username and password to the file *Regsetup.reg.txt*
2. Rename this file to *Regsetup.reg*
3. Launch this file
4. Run CMD and regedit to verify all options were written in the Registry
Computer>HKEY_LOCAL_MACHINE>SOFTWARE>Microsoft>Windows NT>CurrentVersion>Winlogon
5. Delete password from the file and rename to *Regsetup.reg.txt*

# How to use AutoLaunchMT4

1. Place this file into Startup Folder Windows on your PC
2. Add path of the terminal.exe file of your MT4 platforms on any new line
3. Close terminals and launch the file to test that all terminals will start

# How to add reboog log tool

1. Place file Rebootlog.cmd to the Startup folder Windows
2. Test the tool by launching it

# How to find the Startup Folder Windows?

Start > All Programs, then right-click on Startup and selecting "Open".

e.g. "C:\Users\fxtrams\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"