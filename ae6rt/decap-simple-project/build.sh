#!/bin/bash

echo hello from Github: build branch ${BRANCH_TO_BUILD}
exit 0

for i in {1..9000}; do
        echo "$i"
	date 
	sleep 2
done
