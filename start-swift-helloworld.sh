#!/bin/bash

# If any commands fail, we want the shell script to exit immediately.
set -e

echo ">> About to clone Swift Sample Starter App..."
# Clone Kitura repo
cd /root && rm -rf swift-helloworld && git clone -b master git@github.ibm.com:Bluemix/swift-helloworld.git

# Build Kitura
echo ">> About to build Swift Sample Starter App..."
# As of now, the swift build command will fail for Kitura;
# hence the need for the OR boolean logic below.
cd /root/swift-helloworld && swift build
echo ">> Build for Swift Sample Starter App completed."
cd /root/swift-helloworld && .build/debug/Server
