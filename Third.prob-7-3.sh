#!/bin/bash -x

read -p 'Enter the No.:' C
num=2;
A=0;
while [ $num -lt $C ]
do
	for((num=2; num<$C; num++))
	do
		randomNumber=$(($C%$num))
		if [ $randomNumber -eq 0 ]
		then
		C=$(($C/$num))
		Array[$A]=$num
		num=1;
		A=$(($A+1))
	fi
	done
done

	Array[$A]=$C

	echo ${Array[@]}
