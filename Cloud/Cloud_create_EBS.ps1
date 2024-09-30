#Install-Module -Name AWSPowerShell -Scope CurrentUser

# Set AWS Credentials
Set-AWSCredential -AccessKey "your-access-key" -SecretKey "your-secret-key" -Region "your-region"

# Create an EBS Volume
$volume = New-EC2Volume -AvailabilityZone "" -Size 10 -VolumeType ""

# Attach the EBS Volume to an EC2 Instance
$instanceId = ""
$volumeId = $volume.VolumeId
Add-EC2Volume -InstanceId $instanceId -VolumeId $volumeId -Device "/dev/sdf"
