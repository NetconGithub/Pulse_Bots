Add-Type -Path "C:\chilkat\ChilkatDotNet47-9.5.0-x64\ChilkatDotNet47.dll"

# Use the NextInTraversal2 method to traverse all nodes in the XML tree rooted at the caller.

$xml = New-Object Chilkat.Xml

$success = $xml.LoadXmlFile("qa_data/xml/twoPigs.xml")

$sbState = New-Object Chilkat.StringBuilder
while ($xml.NextInTraversal2($sbState) -ne $false) {

    $($xml.Tag)
    $($xml.TagPath)
    $("")

}
