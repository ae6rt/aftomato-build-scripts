#!/bin/bash

set -ux

git clone https://github.com/ae6rt/hello-world-java.git --branch ${BRANCH_TO_BUILD}
cd hello-world-java
mvn clean package
cp -r target /build-artifacts
sleep 3600
