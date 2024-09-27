#************************** Repalce string in a file ***************************************#

$path="Path of the file"
$data= Get-Content -Path $path
$value1="Value that needs to be reaplaced"
$value2="Value that needs to be reaplaced"
$new_data=$data.replace('$value1','$value2')
$data=Add-Content -Path $path  -Value "$value2"