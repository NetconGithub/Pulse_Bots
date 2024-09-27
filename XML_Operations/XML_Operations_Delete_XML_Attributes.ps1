$xml = [xml](Get-Content C:\Temp\SampleXML.xml)
$node = $xml.SelectSingleNode("//book[@id='bk102']")
$node.ParentNode.RemoveChild($node) | Out-Null
$xml.Save('C:\Temp\SampleXML.xml')

$xml = [xml](Get-Content C:\Temp\SampleXML.xml)
$xml.SelectNodes("//book")
$nodes = $xml.SelectNodes("//book")
foreach($node in $nodes){$node.ParentNode.RemoveChild($node)}