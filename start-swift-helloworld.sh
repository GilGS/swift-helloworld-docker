#!/bin/bash

# If any commands fail, we want the shell script to exit immediately.
set -e

echo ">> About to clone Swift Sample Starter App..."
# Clone Swift Starter App repo
cd /root && rm -rf swift-helloworld && git clone -b master https://github.com/starterapps-metadata/swiftHelloWorld.git swift-helloworld

# Build Swift Starter App
echo ">> About to build Swift Sample Starter App..."
cd /root/swift-helloworld/app && swift build
echo ">> Build for Swift Sample Starter App completed."

# Run sample server
cd /root/swift-helloworld/app && .build/debug/Server
