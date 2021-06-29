# Computer Name Automation

This will automate renaming/naming network computers to meet a standard.

This script uses powershell to rename computers automatically. Microsoft Documentation is linked here https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/rename-computer?view=powershell-7.1

##Common Issues

In order for this script to function correctly it is important that RPC and WMIC be working correctly in the **domain** environment.

- RPC must be allowed via the Firewall on the machine. Ensure that both the RPC service is running as well as TCP Port 135 is allowed through the firewall.
- `Winrm quickconfig` must either be run on the computer **or** the machine must be setup through the domain to accept remote maangement connections.

##CSV setup

You will need to use the attached CSV Setup with the old computer on the left hand side of the commas and the new on the right.

##Use

- Ensure that you are using a Domain Admin Account.
- Be aware that there is no need to setup new computer accounts. It will auto add thes computers to Active Directory and replace the old computer.
