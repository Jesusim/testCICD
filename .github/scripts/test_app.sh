set -eo pipefail

xcodebuild -workspace testCICD.xcworkspace \
            -scheme testCICD \
            -destination platform=iOS\ Simulator,OS=13.3,name=iPhone\ 11 \
            clean test | xcpretty
