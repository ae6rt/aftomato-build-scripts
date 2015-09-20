#!/bin/bash

echo hello from Github: build branch ${BRANCH_TO_BUILD}

for i in {1..9000}; do
        echo "$i"
	date 
	sleep 2
done
