# Define the process name you want to check
$processName = "YourProcessName"

# Define the list of computers to check
$computers = @("Computer1", "Computer2", "Computer3")

foreach ($computer in $computers) {
    Write-Host "Checking process status on $computer..."

    # Use Invoke-Command to run the Get-Process cmdlet on the remote computer
    $process = Invoke-Command -ComputerName $computer -ScriptBlock {
        param ($processName)
        Get-Process -Name $processName -ErrorAction SilentlyContinue
    } -ArgumentList $processName

    if ($process) {
        Write-Host "$processName is running on $computer" -ForegroundColor Green
    } else {
        Write-Host "$processName is not running on $computer" -ForegroundColor Red
    }
}