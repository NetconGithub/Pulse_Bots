# Login to Azure
Connect-AzAccount

# Create a Resource Group
$resourceGroup = @{
    Name = "MyResourceGroup"
    Location = ""
}
New-AzResourceGroup @resourceGroup

# Create a Virtual Network
$vnet = @{
    Name = "MyVNet"
    ResourceGroupName = "MyResourceGroup"
    Location = ""
    AddressPrefix = "10.0.0.0/XX"
}
$virtualNetwork = New-AzVirtualNetwork @vnet

# Create a Subnet
$subnet = @{
    Name = "MySubnet"
    VirtualNetwork = $virtualNetwork
    AddressPrefix = "10.0.0.0/XX"
}
Add-AzVirtualNetworkSubnetConfig @subnet

# Associate the Subnet Configuration to the Virtual Network
$virtualNetwork | Set-AzVirtualNetwork
