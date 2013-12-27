Powershell-payload-Excel-Delivery
=================================

Follow me on Twitter: @enigma0x3

Contains automatic persistence.


Persist.vbs and the ps1 payload need to be hosted and accessible by the target (webserver, ect). 

This attack uses an excel document to get into the organization (bypassing filters and scans), and then pulls down a powershell payload, drops it, pulls down a persistence script, drops it, creates a registry key for autorun for the persistence script, executes the powershell payload, and then deletes the payload. 

Once the payload is ran, it runs in the powershell process, so if the user closes excel, you keep your shell. You also remain in a stable process until reboot, so migration is not needed. AV also does not pick this up.

Shoutout to @TheColonial for helping me with the code for hiding the window upon payload execution and testing the code. Big thanks mate :)
