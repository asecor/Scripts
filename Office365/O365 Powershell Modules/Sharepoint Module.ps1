#Use "SharePoint Online Management Shell"

set-executionpolicy unrestricted
$orgName='tenantname'
Connect-SPOService -Url https://$orgName-admin.sharepoint.com