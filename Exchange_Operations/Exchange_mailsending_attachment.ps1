$User = "username to connect"
$password = "passsword"
$pass1= ConvertTo-SecureString $password1 -AsPlainText -Force
$cred=New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $User, $pass1
$EmailTo = "to mail id "
$EmailFrom = "From mail id"
$Subject = "Email Subject"
$Body = "Email body text"
$SMTPServer = “smtp server name"
$filenameAndPath = " attachmentfile path to be passed"
$SMTPMessage = New-Object System.Net.Mail.MailMessage($EmailFrom,$EmailTo,$Subject,$Body)
$attachment = New-Object System.Net.Mail.Attachment($filenameAndPath)
$SMTPMessage.Attachments.Add($attachment)
$SMTPClient = New-Object Net.Mail.SmtpClient($SMTPServer, 587)
$SMTPClient.EnableSsl = $true
$SMTPClient.Credentials = New-Object System.Net.NetworkCredential($cred.UserName, $cred.Password);
$SMTPClient.Send($SMTPMessage)