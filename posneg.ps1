$number = Read-Host "enter a number"
$number = [int]$number
if ($number -gt 0){
    Write-Host "positive"
}
elseif ($number -lt 0){
    Write-Host "Negetive"
}
else {
    Write-Host "Zero"
}