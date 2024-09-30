$appServicePlan = New-AzAppServicePlan -Name "myAppServicePlan" -Location "EastUS" -ResourceGroupName "myResourceGroup" -Tier "Standard"
New-AzWebApp -Name "myWebApp" -Location "EastUS" -AppServicePlan $appServicePlan -ResourceGroupName "myResourceGroup"
