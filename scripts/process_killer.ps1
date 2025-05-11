# process_killer.ps1
# Interactive script to list and kill Python processes by selection

Write-Host "\n=== Python Process Killer ===\n" -ForegroundColor Cyan

function List-PythonProcesses {
    $procs = Get-Process python | Select-Object Id, ProcessName, StartTime, CPU, PM, WS, Path
    if ($procs.Count -eq 0) {
        Write-Host "No running Python processes found." -ForegroundColor Yellow
        return $null
    }
    Write-Host "Index |   PID   |   CPU(s)   |   PM(MB)   |   WS(MB)   |   Start Time           | Path"
    Write-Host "------|---------|------------|------------|------------|-----------------------|------"
    $i = 0
    foreach ($p in $procs) {
        $pm = [math]::Round($p.PM / 1MB, 2)
        $ws = [math]::Round($p.WS / 1MB, 2)
        Write-Host ("{0,5} | {1,7} | {2,10:N2} | {3,10:N2} | {4,10:N2} | {5,-21} | {6}" -f $i, $p.Id, $p.CPU, $pm, $ws, $p.StartTime, $p.Path)
        $i++
    }
    return $procs
}

while ($true) {
    $procs = List-PythonProcesses
    if (-not $procs) { break }
    Write-Host "\nSelect the index of the process to kill (comma-separated for multiple), or 'x' to exit: " -NoNewline
    $input = Read-Host
    if ($input -eq 'x') { break }
    $indices = $input -split ',' | ForEach-Object { $_.Trim() } | Where-Object { $_ -match '^\d+$' }
    foreach ($idx in $indices) {
        if ($idx -ge 0 -and $idx -lt $procs.Count) {
            $procId = $procs[$idx].Id
            try {
                Stop-Process -Id $procId -Force
                Write-Host "Killed process PID $procId" -ForegroundColor Green
            } catch {
                Write-Host "Failed to kill process PID $procId. Error: $($error[0])" -ForegroundColor Red
            }
        } else {
            Write-Host "Invalid index: $idx" -ForegroundColor Yellow
        }
    }
    Write-Host "\nRefresh...\n"
}
Write-Host "Exiting Python Process Killer." -ForegroundColor Cyan 