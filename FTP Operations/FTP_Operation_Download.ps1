# Define the FTP server and file details
$ftpServer = "ftp://yourftpserver.com"
$ftpFilePath = "/path/to/yourfile.txt"
$localFilePath = "C:\\path\\to\\local\\file.txt"

# Create a WebClient object
$webClient = New-Object System.Net.WebClient

# Set the credentials if required
$webClient.Credentials = New-Object System.Net.NetworkCredential("username", "password")

# Download the file
$webClient.DownloadFile("$ftpServer$ftpFilePath", $localFilePath)

# Confirm the download
Write-Output "File downloaded successfully to $localFilePath"
