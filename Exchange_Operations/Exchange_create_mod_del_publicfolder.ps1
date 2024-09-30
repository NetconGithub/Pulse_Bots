#declaring folder name
$foldername = "Pass the foldername here"
$folder = "Pass the folder path"
$server = "Pass the server name"

#creating folder in root
New-PublicFolder -Name $foldername


#modifying folder

Update-PublicFolder $folder -Server $server

#Deleting folders and its child folders
Remove-PublicFolder -Identity $folder -Recurse


