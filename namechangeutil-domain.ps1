#Written by Aaron Fletcher#

#This script will ingest a list of computers from a csv and import their old names and what the new name is suppsoed to be#

$welcomemsg = "Welcome to the Domain Windows computer renaming tool.
Please ensure you have Domain Administrator credentials in order to run this tool
##Run at your own risk. I am not responsible for you messing things up!##"

Write-Host $welcomemsg -ForegroundColor Yellow


##Ingest Data from CSV##

$csvmsg = "Beginning import of CSV. If you are not seeing data populate below please look into CSV"

Write-Host $csvmsg -ForegroundColor Yellow

$csv = Import-CSV ./computerrename-domain.csv
$csv | select-object -ExpandProperty old-names -outvariable oldnames
$csv | select-object -ExpandProperty new-names -outvariable newnames

##Verify remote computers are online and functioning##



##Rename PCs to given names##


##Restart machine afterwards##



##Reconnect & verify connection/hostname##
