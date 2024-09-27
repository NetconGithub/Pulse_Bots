#Declaring username and password
$machine = "Pass the machine name here"
$username1 = 'Pass thw user name'
 
              $password1 = 'Pass the password here'
 
              $pass1= ConvertTo-SecureString $password1 -AsPlainText -Force
 
              $cred = New-Object System.Management.Automation.PsCredential( $username1, $pass1 )
#Stop sql

$stopsql = Get-SqlInstance -Credential $cred -MachineName $machine | Stop-SqlInstance -Credential $cred -AcceptSelfSignedCertificate

#Start sql or restart sql
$startsql = Get-SqlInstance -Credential $cred -MachineName $machine | Start-SqlInstance -Credential $cred -AcceptSelfSignedCertificate