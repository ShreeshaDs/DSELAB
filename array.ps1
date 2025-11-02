$inputArray = Read-Host "enter a array "
$array = $inputArray -split " " | ForEach-Object { [int]$_ }

$target = Read-Host "enter a number to search"
$target = [int]$target

Write-Output "-------Linear search-------"
$found = $false
for ($i = 0; $i -lt $array.Length; $i++){
    if ($array[$i] -eq $target){
        Write-Output "Element $target found at position $i (index) "
        $found = $true
        break
    }
}
if (-not $found ){
    Write-Output "Element $target not found in array"
}

Write-Output "----------Binary search---------"
$sortedArray = $array | Sort-Object
$low = 0
$high = $sortedArray.Length - 1
$found = $false

while ($low -le $high){
    $mid = [math]::Floor(($low + $high) / 2)
    if ($sortedArray[$mid] -eq $target){
        Write-Output "Element $target found at position $mid (index) in sorted array"
        $found = $true
        break
    }
    elseif ($sortedArray[$mid] -lt $target){
        $low = $mid + 1
    }
    else{
        $high = $mid - 1
    }
}

if (-not $found){
    Write-Output "element $target not found in array (binary search)"
}