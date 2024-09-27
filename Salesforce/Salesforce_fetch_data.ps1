#Salesforce access management
Install-Module SalesforceCmdlets
#Connect to salesforce
$salesforce = Connect-Salesforce  -User "$User" -Password "$Password" -SecurityToken "$SecurityToken"
#Search for and retrieve data:
$name = "Data to be searched"
$account = Select-Salesforce -Connection $salesforce -Table "Account" -Where "Name = `'$Name`'"
$account
#or
#SQL query
$account = Invoke-Salesforce -Connection $salesforce -Query 'SELECT * FROM Account WHERE Name = @Name' -Params @{'@Name'='data to be ysed'}
$account
