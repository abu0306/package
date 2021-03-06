#!/bin/sh
set -eo pipefail

gpg --quiet --batch --yes --decrypt  --passphrase="$IOS_KEYS"  --output .github/secrets/Universal_Links.mobileprovision .github/secrets/Universal_Links.mobileprovision.gpg
gpg --quiet --batch --yes --decrypt --passphrase="$IOS_KEYS"  --output .github/secrets/HK.QA.p12  .github/secrets/HK.QA.p12.gpg

mkdir -p  ~/Library/MobileDevice/Provisioning\ Profiles

cp .github/secrets/Universal_Links.mobileprovision  ~/Library/MobileDevice/Provisioning\ Profiles/Universal_Links.mobileprovision


security create-keychain -p "" build.keychain
# security create-keychain -p "" ~/Library/Keychains/build.keychain

security import .github/secrets/HK.QA.p12 -t agg -k ~/Library/Keychains/build.keychain -P "1234567890" -A

security list-keychains -s ~/Library/Keychains/build.keychain
security default-keychain -s ~/Library/Keychains/build.keychain
security unlock-keychain -p "" ~/Library/Keychains/build.keychain

security set-key-partition-list -S apple-tool:,apple: -s -k "" ~/Library/Keychains/build.keychain