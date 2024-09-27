                     $user = ''
                     $manager = ''
                     $username1 = ''
                     $password1 = ''
                     $pass1= ConvertTo-SecureString $password1 -AsPlainText -Force
                     $azure_cred = New-Object System.Management.Automation.PsCredential( $username1, $pass1 )
                     $connect= Connect-AzureAD -Credential $azure_cred -WarningAction Ignore -Confirm:$false -Tenant "3865b44b-651f-4df8-a0c8-2625494f6198" 
                     $set_company_name = Set-AzureADUser -ObjectId $user -CompanyName 'Netcon'
                     $set_country = Set-AzureADUser -ObjectId $user -Country 'Central India'
                     $set_dept = Set-AzureADUser -ObjectId $user -Department 'Test Delivery'
                     $manager_id = (Get-AzureADUser -ObjectId $manager).ObjectId
                     $change_value = Set-AzureADUserManager -ObjectId $user -RefObjectId $manager_id
                     $result = Get-AzureADUser -ObjectId $user | Select * 
                     $result