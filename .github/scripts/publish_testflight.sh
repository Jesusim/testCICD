set -eo pipefail

echo "world!"
echo $APPLEID_USERNAME

xcrun altool --upload-app -t ios -f build/testCICD\ iOS.ipa -u "$APPLEID_USERNAME" -p "$APPLEID_PASSWORD" --verbose
