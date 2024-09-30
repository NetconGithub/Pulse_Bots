# Define your Salesforce credentials and endpoint
$clientId = "YOUR_CLIENT_ID"
$clientSecret = "YOUR_CLIENT_SECRET"
$username = "YOUR_SALESFORCE_USERNAME"
$password = "YOUR_SALESFORCE_PASSWORD"
$securityToken = "YOUR_SECURITY_TOKEN"
$loginUrl = "https://login.salesforce.com/services/oauth2/token"

# Authenticate and get the access token
$response = Invoke-RestMethod -Method Post -Uri $loginUrl -Body @{
    grant_type = "password"
    client_id = $clientId
    client_secret = $clientSecret
    username = $username
    password = "$password$securityToken"
}

$accessToken = $response.access_token
$instanceUrl = $response.instance_url

# Define the user ID whose password you want to reset
$userId = "USER_ID_TO_RESET"

# Make the API call to reset the password
$resetPasswordUrl = "$instanceUrl/services/data/vXX.X/sobjects/User/$userId/password"
$response = Invoke-RestMethod -Method Delete -Uri $resetPasswordUrl -Headers @{
    Authorization = "Bearer $accessToken"
}

# Output the response
$response
