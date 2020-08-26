#!/bin/bash

set -eo pipefail


# xcodebuild -workspace package.xcworkspace -scheme package  -configuration Release -archivePath $PWD/build/package.xcarchive clean archive | xcpretty

# xcodebuild -workspace package.xcworkspace -scheme package -archivePath $PWD/build/package.xcarchive -configuration Debug 

xcodebuild -workspace package.xcworkspace -scheme package -archivePath build/package.xcarchive archive -configuration Debug "OTHER_CODE_SIGN_FLAGS=--keychain ~/Library/Keychains/build.keychain" # Release #Debug

