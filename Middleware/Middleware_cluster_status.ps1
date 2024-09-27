# Install the FailoverClusters module
Install-Module FailoverClusters

# Import the FailoverClusters module
Import-Module FailoverClusters

# Get the cluster information
$cluster = Get-Cluster

# Display the cluster name and status
Write-Output "Cluster Name: $($cluster.Name)"
Write-Output "Cluster Status: $($cluster.State)"

# Get the status of all nodes in the cluster
$nodes = Get-ClusterNode
foreach ($node in $nodes) {
    Write-Output "Node Name: $($node.Name)"
    Write-Output "Node Status: $($node.State)"
}

# Get the status of all cluster groups
$groups = Get-ClusterGroup
foreach ($group in $groups) {
    Write-Output "Group Name: $($group.Name)"
    Write-Output "Group Status: $($group.State)"
}

# Get the status of all cluster resources
$resources = Get-ClusterResource
foreach ($resource in $resources) {
    Write-Output "Resource Name: $($resource.Name)"
    Write-Output "Resource Status: $($resource.State)"
}