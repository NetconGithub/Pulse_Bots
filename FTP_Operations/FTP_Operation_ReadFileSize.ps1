# FTP server details
$ftpServer = "ftp://yourftpserver.com"
$ftpFilePath = "/path/to/your/file.txt"
$username = "yourusername"
$password = "yourpassword"
 
# Create FTP request object
$ftpRequest = [System.Net.FtpWebRequest]::Create("$ftpServer$ftpFilePath")
$ftpRequest.Credentials = New-Object System.Net.NetworkCredential($username, $password)
$ftpRequest.Method = [System.Net.WebRequestMethods+Ftp]::GetFileSize
 
# Get the response from the FTP server
$ftpResponse = $ftpRequest.GetResponse()
$fileSize = $ftpResponse.ContentLength
 
# Output the file size
Write-Output "The size of the file is $fileSize bytes."
 
# Close the response
$ftpResponse.Close()