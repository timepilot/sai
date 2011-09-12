#!/bin/bash
source sai_lib

	workdir="$PWD"
	for disk in $(finddisks); do
		cd /sys/block/$disk
		for part in $disk*; do
			if [ -d $part ]; then
				echo "$part"
			fi
		done
	done
