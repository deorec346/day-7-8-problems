#!/bin/bash -x
n=0;

declare -P Num

Random=1
Num[$Random]=0

while [ ${Num[$Random]} -lt 10 ]
do

Random=$(($RANDOM%6+1))
n=$(($n+1))

declare -P Dice
Dice[$n]=$Random


Num[$Random]=$((${Num[$Random]}+1))


done
	echo ${Dice[@]}
#	echo ${Num[@]}
min=15
max=0
	for((n=1; n<=6; n++))
	do
		if [ ${Num[$n]} -gt $max ]
		then
			max=${Num[$n]}
			imax=$n
		fi
		if [ ${Num[$n]} -lt $min ]
      then
      	min=${Num[$n]}
         imin=$n
		fi
	done

echo Max $imax no $max times
echo Min $imin no $min times
