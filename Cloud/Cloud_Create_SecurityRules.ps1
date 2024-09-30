Connect-AzAccount

New-AzNetworkSecurityGroup -ResourceGroupName "YourResourceGroupName" -Location "YourLocation" -Name "YourNSGName"

$nsg = Get-AzNetworkSecurityGroup -ResourceGroupName "YourResourceGroupName" -Name "YourNSGName"
$rule = New-AzNetworkSecurityRuleConfig -Name "AllowHTTP" -Description "Allow HTTP" -Access "Allow" -Protocol "Tcp" -Direction "Inbound" -Priority 100 -SourceAddressPrefix "*" -SourcePortRange "*" -DestinationAddressPrefix "*" -DestinationPortRange 80
$nsg | Add-AzNetworkSecurityRuleConfig -SecurityRule $rule | Set-AzNetworkSecurityGroup

Get-AzNetworkSecurityGroup -ResourceGroupName "YourResourceGroupName" -Name "YourNSGName"
