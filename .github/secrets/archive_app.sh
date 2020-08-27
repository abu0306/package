#!/bin/bash

set -eo pipefail


# xcodebuild -workspace package.xcworkspace -scheme package  -configuration Release -archivePath $PWD/build/package.xcarchive clean archive | xcpretty

# xcodebuild -workspace package.xcworkspace -scheme package -archivePath $PWD/build/package.xcarchive -configuration Debug 

xcrun xcodebuild clean -workspace package.xcworkspace -scheme package -archivePath build/package.xcarchive archive -disableAutomaticPackageResolution -showBuildTimingSummary -parallelizeTargets -configuration Debug  # Release #Debug

