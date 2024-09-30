Install-Module -Name AWSPowerShell.NetCore
$AccessKey = "your-access-key"
$SecretKey = "your-secret-key"
$Region = "us-east-1"  # Replace with your desired region

New-SQSQueue -QueueName "my-new-powershell-queue" -AccessKey $AccessKey -SecretKey $SecretKey -Region $Region
