#!/bin/bash

read -p "Enter fruit name: " fruit

case $fruit in 
	"apple")
	  echo "its an apple"
          ;;
        "banana")
          echo "its a banana"
          ;;
        "orange")
          echo "its an orange"
          ;;
        *)
          echo" unknown fruit"
          ;;
esac	  
