#************************** Write data into the file ***************************************#

$path="Path of the file"
$value="Data that needsto be added"
$data=Add-Content -Path $path  -Value "$value"
$data