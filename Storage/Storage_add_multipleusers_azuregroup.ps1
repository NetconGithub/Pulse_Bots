# Connect to your Azure account
Connect-AzureAD

# Define the group object ID
$groupId = "YourGroupObjectId"

# Import the CSV file containing user object IDs
$users = Import-Csv -Path "PathToYourCSVFile.csv"

# Loop through each user and add them to the group
foreach ($user in $users) {
    Add-AzureADGroupMember -ObjectId $groupId -RefObjectId $user.ObjectId
}
