#Salesforce access management
Install-Module SalesforceCmdlets
#Connect to salesforce
$salesforce = Connect-Salesforce  -User "$User" -Password "$Password" -SecurityToken "$SecurityToken"
$salesforce_update = Update-Salesforce -Connection $Salesforce -Columns @('column1','column2') -Values @('value1', 'value2') -Table Account -Id "MyId"
$salesforce_update