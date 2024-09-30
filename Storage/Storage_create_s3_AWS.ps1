# Install the AWS Tools for PowerShell module if not already installed
Install-Module -Name AWS.Tools.Installer -Force

# Import the necessary AWS modules
Import-Module AWS.Tools.Common
Import-Module AWS.Tools.S3

# Set your AWS credentials
$accessKey = 'YOUR_ACCESS_KEY'
$secretKey = 'YOUR_SECRET_KEY'
$region = 'us-west-2'

# Configure AWS credentials
Set-AWSCredential -AccessKey $accessKey -SecretKey $secretKey -StoreAs default

# Variables for the S3 bucket
$bucketName = 'my-new-bucket'

# Create the S3 bucket
New-S3Bucket -BucketName $bucketName -Region $region

# Verify the bucket creation
Get-S3BucketLocation -BucketName $bucketName
