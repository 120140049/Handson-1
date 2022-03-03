#!/bin/bash

if [ "$#" -lt 2 ]; then
        echo "Masukkan setidaknya 2 argumen (kata dan nama file)"
else
        for file in "$@"; do
                if [ "$file" = "$1" ]; then
                        continue
                else
                        echo "$file :"
                        if [ -f $file ]; then   
                                sed -e '/'$1'/d' $file
                        else
                                echo "tidak ditemukan!"
                        fi
                fi
                echo
        done
fi
exit 0
