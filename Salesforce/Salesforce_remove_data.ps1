#Salesforce access management
Install-Module SalesforceCmdlets
#Connect to salesforce
$salesforce = Connect-Salesforce  -User "$User" -Password "$Password" -SecurityToken "$SecurityToken"
$salesforce_remove = ARemove-Salesforce -Connection $Salesforce -Table "Account" -Id "MyId"
$salesforce_remove
