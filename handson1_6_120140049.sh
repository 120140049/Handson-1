#!/bin/bash

if [ "$#" -lt 1 ]; then
	echo "Masukkan setidaknya 1 nama file sebagai argumen!"
	exit 0
else
	for file in "$@"; do
		echo "$file:"
		if [ -f $file ]; then
			tr "[:lower:]" "[:upper:]" < $file
		else
			echo "tidak ditemukan!"
		fi
		echo
	done
fi
