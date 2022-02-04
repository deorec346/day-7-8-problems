#!/bin/bash -x
for ((n=0; n<6; n++))
do
	C_Random=$(($RANDOM%10))
	Array[$n]=$C_Random
done

for ((n=5; n<10; n++))
do
	C_Random=$(($RANDOM%10-10))
	Array[$n]=$C_Random
done

echo ${Array[@]}
n=0;
for ((n=0; n<8; n++))
do
		c1=${Array[$n]}

		for((a=$(($n+1)); a<9; a++))
		do
			c2=${Array[$a]}

			for((b=$(($a+1)); b<10; b++))
			do
				c3=${Array[$b]}

				add=$(($c1+$c2+$c3))

				if [ $add -eq 0 ]
				then
					echo $c1 + $c2 +$c2
				fi
			done
		done
done
