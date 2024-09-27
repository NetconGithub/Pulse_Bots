$path             = 'C:\Data.xml'
$ManagementServer = 'NewManagementServer'
$SQLServer        = 'NewSQLServer'
$SQLAdmin         = 'Domain\NewSQlAdmin'
$DNSServerVMName  = 'NewDNSServer'

$xml = [xml](Get-Content $path)

$node = $xml.Data.Roles.Role |
    where {$_.Name -eq 'ManagementServer'}
$node.Value = $ManagementServer

$node        = $xml.Data.SQL.Instance
$node.Server = $SQLServer

$node = $xml.Data.SQL.Instance.Variable |
    where {$_.Name -eq 'SQLAdmin'}
$node.Value = $SQLAdmin

$node = $xml.Data.VMs.VM |
    where {$_.Type -eq 'DNSServerVM'}
$node.VMName = $DNSServerVMName

$xml.Save($path)