function Tail-EventLog () {
  $lastCheck = [DateTime]::Now.Date
  while ($true) {
    Get-EventLog System -After $lastCheck -ErrorAction SilentlyContinue
    $lastCheck = [DateTime]::Now.DateTime
    Start-Sleep 1
  }
}

Tail-EventLog