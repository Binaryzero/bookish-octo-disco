$logFile = "office-files-search.log"

Write-Host "Searching for Office Documents, PDFs, and ZIP files..."
Write-Host "Results will be written to log file: $logFile"

$files = Get-ChildItem -Path "C:\" -Recurse -Include *.doc, *.docx, *.xls, *.xlsx, *.ppt, *.pptx, *.pdf, *.zip, *.xlsb, *.xlsm, *.xltx, *.xltm, *.pptm, *.ppsm, *.potx, *.potm
$taskCount = $files.Count

$taskList = @()

foreach ($file in $files) {
  $task = Start-Job -ScriptBlock {
    Param ($file)
    Write-Output "Found: $($file)"
    Write-Output
  } -ArgumentList $file
  
  $taskList += $task
}

Write-Output "Waiting for all tasks to complete..."

# Create a progress bar
$progress = 0
$progressBar = [System.Management.Automation.ProgressRecord]::new(0, "Searching for Office Documents, PDFs, and ZIP files", "In progress...")

# Wait for all jobs to finish
while ($taskList.Count -gt 0) {
  $done, $notDone = Wait-Job -Job $taskList -Timeout 1
  foreach ($job in $done) {
    $taskList = $taskList | Where-Object { $_ -ne $job }
    $progress++
    $percentComplete = [int] ($progress / $taskCount * 100)
    $progressBar.PercentComplete = $percentComplete
    Write-Progress $progressBar
  }
}

Write-Output "Gathering results from all tasks..."

# Get the results from all jobs
$results = Receive-Job $taskList

# Write the results to the log file
$results | Out-File $logFile

Write-Host "Search complete. Results written to log file: $logFile"
Write-Host "Press any key to continue..."
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
