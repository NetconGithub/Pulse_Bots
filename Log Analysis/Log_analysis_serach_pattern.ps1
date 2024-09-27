#************** Finding logs with patterns *******************************#

$log_data=Get-EventLog -LogName System 

$paatern="Enter the patern you are searcing for"

$data_found=$log_data | Where-Object { $_.Message -match '$pattern'}

$data_found