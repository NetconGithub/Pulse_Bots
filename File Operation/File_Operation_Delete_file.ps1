#************************** Delete file ***************************************#

$path="Path of the file"
Remove-Item -Path $path -Force
$test= Test-Path -Path $path
if($test){
Write-Output "File is deleted"
}
else{
Write-Output "File is not deleted"
}
