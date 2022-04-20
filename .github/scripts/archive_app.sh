#!/bin/bash

xcodebuild -workspace testCICD.xcworkspace \
            -scheme testCICD \
            -sdk iphoneos \
            -configuration AppStoreDistribution \
            -archivePath $PWD/build/testCICD.xcarchive \
            clean archive | xcpretty
