#Salesforce access management
Install-Module SalesforceCmdlets
#Connect to salesforce
$salesforce = Connect-Salesforce  -User "$User" -Password "$Password" -SecurityToken "$SecurityToken"
$salesforce_insert = Add-Salesforce -Connection $Salesforce -Table Account  -Columns @('column1','column2') -Values @('value1', 'value2') 
$salesforce_insert

