#!/bin/bash -x 
declare -A storage
read -p "enter number: " a
read -p "enter number: " b
read -p "enter number: " c
count=0
operation1="$(( $a+$b*$c ))"
operation2="$(( $a*$b+$c ))"
operation3="$(( $c+$a/$b ))"
operation4="$(( $a%$b+$c ))"
storage[$((count++))]=$operation1
storage[$((count++))]=$operation2
storage[$((count++))]=$operation3
storage[$((count++))]=$operation4
echo "${!storage[@]}  ${storage[@]}"

for (( i=0; i<4; i++ ))
do
	array[i]=${storage[$i]}
	echo "${array[i]}"
done

function sorting_array_desending(){
temp=0
for (( i=0; i<4; i++ ))
do
	for (( j=0; j<4; j++ ))
	do
		if [[ ${array[i]} -gt ${array[j]} ]]
		then
			temp=${array[$j]}
			array[$j]=${array[$i]}
			array[$i]=$temp
		fi
	done
done
	echo ${array[@]}
}
result="$( sorting_array_desending ${array[@]} )"
	echo  "desending $result"
function sorting_array_assending(){
temp=0
for (( i=0; i<4; i++ ))
do
   for (( j=0; j<4; j++ ))
   do
		if [[ ${array[i]} -lt ${array[j]} ]]
 		then
  			temp=${array[$j]}
  			array[$j]=${array[$i]}
  			array[$i]=$temp
   	fi
   done
done
	echo ${array[@]}
}

result="$( sorting_array_assending ${array[@]} )"
	echo  "asending= $result"

