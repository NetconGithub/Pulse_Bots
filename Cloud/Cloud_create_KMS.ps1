Install-WindowsFeature -Name VolumeActivation -IncludeManagementTools

# Install the Volume Activation Services Role
Install-WindowsFeature -Name VolumeActivation -IncludeManagementTools

# Set the KMS host key
$kmsHostKey = "your-KMS-host-key"
slmgr.vbs /ipk $kmsHostKey

# Activate the KMS host
slmgr.vbs /ato

# Set the KMS server to listen on the default port (1688)
slmgr.vbs /skms your-kms-server:1688

# Configure the KMS host to publish DNS records
slmgr.vbs /sdns
