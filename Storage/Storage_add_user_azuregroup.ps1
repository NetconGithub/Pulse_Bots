# Connect to your Azure account
Connect-AzureAD

# Define the group object ID and the user object ID
$groupId = "YourGroupObjectId"
$userId = "YourUserObjectId"

# Add the user to the group
Add-AzureADGroupMember -ObjectId $groupId -RefObjectId $userId

