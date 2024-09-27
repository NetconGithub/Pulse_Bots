function New-SalesForceUser { 
    [CmdletBinding()]
    param(
        [Parameter(Mandatory=$true)]
        [string]
        $SalesForceUrl,

        [Parameter(Mandatory=$true)]
        [string]
        $ClientId,

        [Parameter(Mandatory=$true)]
        [string]
        $ClientSecret,

        [Parameter(Mandatory=$true)]
        [string]
        $Username,

        [Parameter(Mandatory=$true)]
        [string]
        $Password,

        [Parameter(Mandatory=$true)]
        [string]
        $SecurityToken
    )
    Write-Hidlog -Message "Connecting to SalesForce" -Event Information
    $uri = "$salesForceUrl" + "/services/oauth2/token"

    $body = @{
        grant_type = "password"
        client_id = "$ClientId"
        client_secret = "$ClientSecret"
        username = "$Username"
        password = "$Password" + "$SecurityToken"
    }

    $result = Invoke-RestMethod -Uri $uri -Method POST -Body $body

    $authToken = @{
        access_token = "$($result.access_token)"
    }

    Write-Hidlog -Message "Starting to create SalesForce user" -Event Information
    $uri = $SalesForceUrl + "/services/data/v27.0/sobjects/user/"
    
    $contentType = "application/json"

    $headers = @{"Authorization" = "OAuth " + $authToken;"Accept" = $contentType }

    $body = @{
        Username = "jdoe@qapp3.nl"
        FirstName = "John"
        LastName = "Doe"
        Email = "rschouten@qapp3.nl"
        Alias = "JDoe"
        CommunityNickname = "JDoe"
        IsActive = "true"
        TimeZoneSidKey = "America/Los_Angeles"
        LocaleSidKey = "en_US"
        EmailEncodingKey = "ISO-8859-1"
        ProfileId = "PROFILEID"
        LanguageLocaleKey = "en_US"
        UserPermissionsMobileUser = "false"
        UserPreferencesDisableAutoSubForFeeds = "false"
    }

    $body = $body | ConvertTo-Json
    
    Invoke-restmethod -Method Post -URI $uri -contenttype $contentType -Body $body -Headers $headers 
}