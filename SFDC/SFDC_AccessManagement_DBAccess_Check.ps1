$SalesForceUrl = 'https://login.salesforce.com'
$ClientID = 'your_client_id'
$ClientSecret = 'your_client_secret'
$Username = 'your_username'
$Password = 'your_password'

Function Get-SalesforceAuthToken {
    param (
        $ClientID,
        $URL,
        $ClientSecret,
        $Username,
        $Password
    )
    try {
        $result = Invoke-RestMethod -Uri "$URL/services/oauth2/token" -Method Post -Body @{
            grant_type    = 'password'
            client_id     = $ClientID
            client_secret = $ClientSecret
            username      = $Username
            password      = $Password
        }
        return $result.access_token
    } catch {
        Write-Error "Error: $_"
    }
}

$token = Get-SalesforceAuthToken -ClientID $ClientID -URL $SalesForceUrl -ClientSecret $ClientSecret -Username $Username -Password $Password

$instanceUrl = 'https://your_instance.salesforce.com'
$query = 'SELECT Id, Name FROM Account LIMIT 10'
$headers = @{
    'Authorization' = "Bearer $token"
}

$response = Invoke-RestMethod -Uri "$instanceUrl/services/data/v52.0/query?q=$query" -Headers $headers -Method Get
$response.records
