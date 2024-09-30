# Connect to your Azure account
Connect-AzureAD

# Variables
$rgName = 'myResourceGroup'
$vmName = 'myVM'
$location = 'East US'
$storageType = 'Premium_LRS'
$dataDiskName = $vmName + '_datadisk1'

# Create a new disk configuration
$diskConfig = New-AzDiskConfig -SkuName $storageType -Location $location -CreateOption Empty -DiskSizeGB 128

# Create the disk
$dataDisk1 = New-AzDisk -DiskName $dataDiskName -Disk $diskConfig -ResourceGroupName $rgName

# Get the VM
$vm = Get-AzVM -Name $vmName -ResourceGroupName $rgName

# Attach the disk to the VM
$vm = Add-AzVMDataDisk -VM $vm -Name $dataDiskName -CreateOption Attach -ManagedDiskId $dataDisk1.Id -Lun 1

# Update the VM
Update-AzVM -VM $vm -ResourceGroupName $rgName
