# Define the user and group
$user = "DOMAIN\Username"
$group = "MiddlewareGroup"

# Add the user to the group
Add-LocalGroupMember -Group $group -Member $user

# Confirm the user has been added
if (Get-LocalGroupMember -Group $group | Where-Object { $_.Name -eq $user }) {
    Write-Output "User $user has been successfully added to $group."
} else {
    Write-Output "Failed to add user $user to $group."
}