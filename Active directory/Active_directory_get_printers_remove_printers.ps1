# Get a list of all servers
$servers = $servername

# Get a list of all printers on each server
foreach ($server in $servers) {
    $printers = Get-Printer -ComputerName $server

    # Count the number of printers
    $count = $printers.Count

    # Write the number of printers to a log file
    Add-Content -Path "C:\PrinterCount.log" -Value "$server has $count printers installed."
}

#To remove the printer
# Get a list of all printers on each server
foreach ($server in $servers) {
   Get-Printer -ComputerName $server | Remove-Printer

}