##Written by Aaron Fletcher##

This will ingest the CSV file that is also attached here as well.

$CSVFile = 'c:\scriptComputerList.csv'

##This will request domain credentials if using a domain env. If this is a local machine you need to use that.

$Credential=Get-Credential

##This will begin the import of the CSV and complete name changes##

$computernames= Import-Csv -Path $CSVFile `
                          -Delimiter "," `
                          -Header OldName,NewName

foreach ($Computer in $computernames)
{
 Rename-Computer -ComputerName $Computer.OldName `
                 -NewName $Computer.NewName `
                 -DomainCredential $Credential `
                 -Force `
                 -Restart
}
