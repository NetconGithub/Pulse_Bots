#************************** Search string in a file ***************************************#

$path="Path of the file"
$data= Get-Content -Path $path
$value="Value that needs to be searched"
$found=$data | Select-String -Pattern $value -CaseSensitive -SimpleMatch
if($found){
Write-Output "$value is present in the file"
}
else{
Write-Output "$value is not present in the file"
}