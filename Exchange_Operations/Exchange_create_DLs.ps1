#Parameters
$Name = "DL name"
$Alias = "Aliasname"
$dlname = "provideemaild@netcon.in"
$DLMembers = @("Provide memebrs with comma seperated values")
 
#Connect to Exchange Online
$connect = Connect-ExchangeOnline -ShowBanner:$False
  
#Create a new Distribution List
$create = New-DistributionGroup -Name $Name -Alias $Alias -PrimarySmtpAddress $dlname -Members $DLMembers -Type Distribution
$output = Echo "$dlname dl has been created sucessfully"

