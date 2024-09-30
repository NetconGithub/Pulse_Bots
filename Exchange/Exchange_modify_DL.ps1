#Parameters
$Name = "DL name"
$Alias = "Aliasname"
$dlname = "provideemaild@netcon.in"
$DLMembers = @("Provide memebrs with comma seperated values")
#***************************************************Modify DL****************************************************************************
#Connect to Exchange Online
$connect = Connect-ExchangeOnline -ShowBanner:$False

#Add a Member to the Distribution List
$singleuser = "pass single mail id"
$addmember = Add-DistributionGroupMember -Identity $dlname -Member $singleuser
 
#Add Multiple Members
$Members = @("Provide memebrs with comma seperated values")
 
$Members | ForEach-Object {
    Add-DistributionGroupMember -Identity "SalesManagers@Crescentcom" -Member $_
    Write-Host "Added Member:"$_
}

#Remove a member from DL
$remMembers = @("Provide memebrs with comma seperated values")

$removemember = Remove-DistributionGroupMember -Identity "SalesManagers@Crescent.com" -Member "AdeleV@Crescent.com"
 
 #Remove multiple members

$remMembers | ForEach-Object {
    Add-DistributionGroupMember -Identity $dlname -Member $_
    Write-Host "Member removed:"$_
}
