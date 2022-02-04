#!/bin/bash -x

a=0;
for ((n=20; n<=100; n++))
do

		Z=$n
		ans=0;
		while [ $Z -gt 0 ]
	do
		Y=$(($Z%10))
		ans=$(($ans*10+Y))
		Z=$(($Z/10))
	done

	if [ $n -eq $ans ]
	then
		pal=$n
		Array[$a]=$pal
		a=$(($a+1))
	fi
done

echo ${Array[@]}
