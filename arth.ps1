function Add($a, $b){
    return ($a + $b)
}
function Sub($a, $b){
    return ($a - $b)
}

function Mul($a, $b){
    return ($a * $b)
}
function Div($a, $b){
    if ($b -ne 0){
        return($a / $b)
    }
    else{
        return "division by zero not allowed"
    }
}
function Mod($a, $b){
    if ($b -ne 0){
        return($a % $b)
    }
    else{
        return "modul by zero not allowed"
    }
}
$a = [int](Read-Host "enter the value of a")
$b = [int](Read-Host "enter the value of b")

Write-Output "Addition: $(Add $a $b)"
Write-Output "Subtraction: $(Sub $a $b)"
Write-Output "Multiplication: $(Mul $a $b)"
Write-Output "Division: $(Div $a $b)"
Write-Output "modulus: $(Mod $a $b)"