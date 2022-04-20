#!/bin/bash

set -eo pipefail

xcodebuild -archivePath $PWD/build/testCICD.xcarchive \
            -exportOptionsPlist testCICD/exportOptions.plist \
            -exportPath $PWD/build \
            -allowProvisioningUpdates \
            -exportArchive | xcpretty
