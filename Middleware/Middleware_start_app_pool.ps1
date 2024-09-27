#************************** Start application pool ***************************************#

#Connect to server and start app pool
(get-wmiobject -namespace 'root\MicrosoftIISv2' -computername 'REMOTE_SERVER' -class 'IIsApplicationPool' | where-object {$_.Name -eq 'W3SVC/AppPools/MY_FANCY_APPPOOL'}).InvokeMethod('stop', $null)