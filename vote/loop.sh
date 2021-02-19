#!/bin/bash

s=0
for (( i=1; i<=$RANDOM; i=i+1 ))
do
	if (( $RANDOM % 2 )); then
		curl -X POST -d "voter_id=$(echo $RANDOM)&vote=a" http://129.213.174.252:5000&
	else
		curl -X POST -d "voter_id=$(echo $RANDOM)&vote=b" http://129.213.174.252:5000&
	fi
done

