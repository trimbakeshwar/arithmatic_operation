#!/bin/bash 
declare -A storage
read -p "enter number: " a
read -p "enter number: " b
read -p "enter number: " c
count=0
function arithmatic_computation_one(){
	echo "$(( $a+$b*$c ))"
}
storage[$((count++))]="$( arithmatic_computation_one $(($a,$b,$c)) )"

function arithmatic_computation_two(){
	echo "$(( $a*$b+$c ))"
}
storage[$((count++))]="$( arithmatic_computation_two $(($a,$b,$c)) )"

function arithmatic_computation_three(){
	echo "$(( $c+$a/$b ))"
}
	storage[$((count++))]="$( arithmatic_computation_three $(($a,$b,$c)) )"

function arithmatic_computation_four(){
	echo "$(( $a%$b+$c ))"
}
storage[$((count++))]="$( arithmatic_computation_four $(($a,$b,$c)) )"

	echo "${!storage[@]}  ${storage[@]}"

