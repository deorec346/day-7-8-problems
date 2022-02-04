#!/bin/bash -x

max=10
num=0

	while [ $num -lt $max ];
	do
		randomCheckNumber=$((RANDOM%900 + 100));

		num=$(($num + 1));
		Array[$num]=$randomCheckNumber
	done
echo ${Array[@]}
