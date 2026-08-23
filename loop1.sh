	#!/bin/bash       


#!/bin/bash

fruits=("apple" "banana" "cherry" "mango")
index=0

while [ $index -lt ${#fruits[@]} ]; do
    echo "fruit at index $index: ${fruits[$index]}"
    index=$((index + 1))   # increment index
done


