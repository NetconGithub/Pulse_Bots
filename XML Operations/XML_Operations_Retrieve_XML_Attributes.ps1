$Path = "$Pshome\Types.ps1xml"
$XPath = "/Types/Type/Members/AliasProperty"
$retrieve = Select-Xml -Path $Path -XPath $Xpath | Select-Object -ExpandProperty Node

$retrieve

