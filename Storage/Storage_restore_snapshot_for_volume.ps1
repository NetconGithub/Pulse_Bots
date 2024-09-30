# Connect to your Azure account
Connect-AzAccount -Credential $azure_cred

# Define the resource group, snapshot name, and the disk name to restore
$resourceGroupName = "your_resource_group_name"
$snapshotName = "your_snapshot_name"
$diskName = "your_disk_name"

# Get the snapshot
$snapshot = Get-AzSnapshot -ResourceGroupName $resourceGroupName -SnapshotName $snapshotName

# Create a new managed disk configuration from the snapshot
$diskConfig = New-AzDiskConfig -SkuName 'Standard_LRS' -Location $snapshot.Location -CreateOption Copy -SourceResourceId $snapshot.Id

# Create the new managed disk
$disk = New-AzDisk -ResourceGroupName $resourceGroupName -DiskName $diskName -Disk $diskConfig

# Attach the new disk to a VM (optional)
# Define the VM name and the VM resource group
$vmName = "your_vm_name"
$vmResourceGroupName = "your_vm_resource_group_name"

# Get the VM
$vm = Get-AzVM -ResourceGroupName $vmResourceGroupName -VMName $vmName

# Update the VM configuration to use the new disk
$vm.StorageProfile.OsDisk.ManagedDisk = $disk.Id

# Update the VM
Update-AzVM -ResourceGroupName $vmResourceGroupName -VM $vm

Write-Host "Snapshot restored and attached to VM successfully."
