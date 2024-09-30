$UserID = "Steve@crescent.com"
$GroupName = "Human Resource"
 
#Connect to Microsoft Graph
Connect-MgGraph -Scopes Group.ReadWrite.All, User.Read.All
 
#Get the User
$User = Get-MgUser -Filter "UserPrincipalName eq '$UserID'"
 
#Get the Group
$Group = Get-MgGroup -Filter "DisplayName eq '$GroupName'"
 
#Add Group Member
New-MgGroupMember -GroupId $Group.ID -DirectoryObjectId $User.ID
