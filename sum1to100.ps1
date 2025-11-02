$sum = 0
for ($i = 1; $i -le 100; $i++) {
    $sum += $i
}
Write-Output "The sum of numbers from 1 to 100 is: $sum"
