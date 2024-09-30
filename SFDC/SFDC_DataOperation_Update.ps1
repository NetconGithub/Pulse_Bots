$clientId = "YOUR_CLIENT_ID"
$clientSecret = "YOUR_CLIENT_SECRET"
$username = "YOUR_USERNAME"
$password = "YOUR_PASSWORD"
$securityToken = "YOUR_SECURITY_TOKEN"

$body = @{
    grant_type    = "password"
    client_id     = $clientId
    client_secret = $clientSecret
    username      = $username
    password      = "$password$securityToken"
}

$response = Invoke-RestMethod -Method Post -Uri "https://login.salesforce.com/services/oauth2/token" -Body $body
$accessToken = $response.access_token
$instanceUrl = $response.instance_url


$query = "SELECT Id, FieldName FROM ObjectName WHERE Condition"
$uri = "$instanceUrl/services/data/vXX.X/query?q=$query"

$response = Invoke-RestMethod -Method Get -Uri $uri -Headers @{ Authorization = "Bearer $accessToken" }
$records = $response.records


foreach ($record in $records) {
    $updateUri = "$instanceUrl/services/data/vXX.X/sobjects/ObjectName/$($record.Id)"
    $body = @{
        FieldName = "NewValue"
    }

    $jsonBody = $body | ConvertTo-Json
    Invoke-RestMethod -Method Patch -Uri $updateUri -Headers @{ Authorization = "Bearer $accessToken" } -Body $jsonBody
}
