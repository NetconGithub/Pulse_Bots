# Connect to your Azure account
Connect-AzureAD

# Variables
$rgName = 'myResourceGroup'
$location = 'East US'
$storageAccountName = 'mystorageaccount'
$volumeName = 'myVolume'
$poolName = 'myStoragePool'

# Create a storage account
$storageAccount = New-AzStorageAccount -ResourceGroupName $rgName -Name $storageAccountName -Location $location -SkuName Standard_LRS

# Create a storage pool
$storagePool = New-AzStoragePool -ResourceGroupName $rgName -StorageAccountName $storageAccountName -Name $poolName

# Create a volume
$volume = New-AzVolume -ResourceGroupName $rgName -StorageAccountName $storageAccountName -StoragePoolName $poolName -Name $volumeName -Size 100GB -VolumeType Premium_LRS

# Output the volume details
$volume
