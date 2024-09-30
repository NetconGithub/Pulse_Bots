# Connect to your Azure account
Connect-AzAccount

# Define the resource group name
$resourceGroupName = "YourResourceGroupName"

# Get all resources in the resource group
$resources = Get-AzResource -ResourceGroupName $resourceGroupName

# Loop through each resource and display its status
foreach ($resource in $resources) {
    $resourceStatus = Get-AzResource -ResourceId $resource.ResourceId -ExpandProperties
    Write-Output "Resource Name: $($resource.Name)"
    Write-Output "Resource Type: $($resource.ResourceType)"
    Write-Output "Resource Status: $($resourceStatus.Properties.provisioningState)"
    Write-Output "----------------------------------------"
}
