#Set primary SMTP Address for office365 group 
Set-unifiedgroup -identity  technology -primarysmtpaddress technologygroup@domain.com
#remove smtp address from office365 group
Set-unifiedgroup -identity  technology -EmailAddresses: @{remove="SMTP:technology@domain.com"}
#add smtp address to office365 group and set it as the primary smtp address
Set-unifiedgroup -identity  technology -primarysmtpaddress technology@domain.com