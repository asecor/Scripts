Get-ADUser -Filter 'enabled -eq $true' -SearchBase "OU=OU NAme,DC=DomainName,DC=com" -Properties DisplayName,memberof | ForEach-Object {
  New-Object PSObject -Property @{
	UserName = $_.DisplayName
	Groups = ($_.memberof | Get-ADGroup | Select-Object -ExpandProperty Name) -join ","
	}
} | Select-Object UserName,Groups | Export-Csv C:\report.csv -NTI