﻿                     #To remove a printer
                     $user = 'user'
                     $username1 = 'username'
                     $password1 = 'password'
                     $pass1= ConvertTo-SecureString $password1 -AsPlainText -Force
                     $azure_cred = New-Object System.Management.Automation.PsCredential( $username1, $pass1 )
                     $connect= Connect-AzureAD -Credential $azure_cred -WarningAction Ignore -Confirm:$false -Tenant "3865b44b-651f-4df8-a0c8-2625494f6198" 
                     $account_unlock= Unlock-AzureAD -Identity $user 
                     
