#!/bin/bash 
declare -A storage
read -p "enter number: " a
read -p "enter number: " b
read -p "enter number: " c

function arithmatic_computation_one(){
   echo "$(( $a+$b*$c ))"
}
result="$( arithmatic_computation_one $(($a,$b,$c)) )"


