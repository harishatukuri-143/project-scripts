#!/bin/bash

set -x

Action="$1"

USERNAME="$2"


create_user(){
         if [ -z "$USERNAME" ]; then 

	    read -p "Enter username to create " USERNAME

	    exit 1
	 fi
         useradd -m -s /bin/bash "$USERNAME"
         echo "user $USERNAME is created. "	 


}


modify_user(){
        if [ -z "$USERNAME" ]; then 
	    read -p "Enter username to modify " USERNAME 
            exit 1
        fi

	userdmod -s /bin/bash "$USERNAME"

	echo " user $USERNAME modfied"

}

delete_user(){
       if [ -z "$USERNAME" ]; then 

	 read -p "Enter username to delete " USERNAME
           exit 1 
       fi

       userdel -r "$USERNAME"	

       echo " User $USERNAME deleted"
}


case "$Action" in
    create)
        create_user
        ;;
    modify)
        modify_user
        ;;
    delete)
        delete_user
        ;;
    *)
        echo "Usage: $0 {create|modify|delete} <username>"
        exit 1
        ;;
esac


              	







