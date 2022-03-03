#!/bin/bash

if [ "$#" -lt 3 ]; then
	echo "Argumen yang dimasukkan tidak lengkap!"
elif [ "$#" -gt 3 ]; then
        echo "Argumen yang dimasukkan terlalu banyak!"
else
        if [ -f $1 ]; then
                sed -n $2,$3\p $1
        else
                echo "$1 Tidak ditemukan"
        fi
fi
exit 0
