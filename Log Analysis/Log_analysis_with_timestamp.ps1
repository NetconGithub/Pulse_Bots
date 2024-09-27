#************** Finding logs with timestamps *******************************#

$data=Get-EventLog -LogName System | Sort-Object -Property TimeWritten

$data