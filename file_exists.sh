#!/bin/bash
 
 

echo -n "Enter the number:"

read -r m 

arm=0

temp=$m

while [ "$m" -ne 0 ]; do
        r=$((m % 10))
        arm=$((arm + r * r * r))
	m=$((m / 10))

done

echo "Sum of cubes: $arm"  

if [ "$arm" -eq "$temp" ]; then
        echo "armstrong"
else
        echo "not armstrong"
fi
