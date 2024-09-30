#parameters
$user = "Provide the user mailbox name"

$delete = Get-Mailbox -Identity $user -SoftDeletedMailbox | Remove-Mailbox -PermanentlyDelete

$output = Echo "$user mailbox is successfully deleted"

