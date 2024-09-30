Connect-AzureAD

# Variables
$rgName = 'myResourceGroup'
$diskName = 'myDisk'
$newSizeGB = 200  # New size in GB

# Get the disk
$disk = Get-AzDisk -ResourceGroupName $rgName -DiskName $diskName

# Update the disk size
$disk.DiskSizeGB = $newSizeGB
Update-AzDisk -ResourceGroupName $rgName -DiskName $diskName -Disk $disk

# Output the updated disk details
$disk
