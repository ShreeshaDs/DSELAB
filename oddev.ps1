$number = Read-Host "enter a number"
$number = [int]$number
if ($number % 2 -eq 0){
    Write-Host "even"
}
else{
    Write-Host "odd"
}