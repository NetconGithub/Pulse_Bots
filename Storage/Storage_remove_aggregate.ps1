# Define the name of the resource group you want to remove
$resourceGroupName = "YourResourceGroupName"

# Remove the resource group and all its resources
Remove-AzResourceGroup -Name $resourceGroupName -Force

# Define the name of the resource group
$resourceGroupName = "YourResourceGroupName"

# Get all storage accounts in the resource group
$storageAccounts = Get-AzStorageAccount -ResourceGroupName $resourceGroupName

# Loop through each storage account and remove it
foreach ($storageAccount in $storageAccounts) {
    Remove-AzStorageAccount -ResourceGroupName $resourceGroupName -Name $storageAccount.StorageAccountName -Force
}
