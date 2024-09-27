#Parameters
$Name = "DL name"
$Alias = "Aliasname"
$dlname = "provideemaild@netcon.in"
$DLMembers = @("Provide memebrs with comma seperated values")
#****************************************************Deleting DL**********************************************************************************************
#Connect to Exchange Online
$connect = Connect-ExchangeOnline -ShowBanner:$False

$deldl = Remove-DistributionGroup -Identity $dlname -Confirm:$false

$output = Echo "DL $dlname is successfully deleted"