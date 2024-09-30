$client = New-Object System.Net.WebClient
$client.Credentials = New-Object System.Net.NetworkCredential("username", "password")
$client.UploadFile("ftp://example.com/path/archive.zip", "C:\\path\\to\\your\\file.zip")
