#!/bin/bash

set -eo pipefail


xcodebuild -workspace package.xcworkspace -scheme package -sdk iphoneos -configuration Release -archivePath $PWD/build/package.xcarchive CODE_SIGN_IDENTITY="Apple Development: YUANZHEN HAN (27J7882KKQ)" PROVISIONING_PROFILE="036fcfcc-9ad6-4358-b260-caf1a854ffc8" clean archive | xcpretty

# xcodebuild -workspace package.xcworkspace \
# 		   -scheme package \
# 		   -archivePath $PWD/build/package.xcarchive \
# 		   -configuration Release \
# 		   clean archive | xcpretty


