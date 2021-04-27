#!/bin/bash

set -e
set -x

xcodebuild -scheme BugsnagStatic -derivedDataPath DerivedData -configuration Release build SDKROOT=iphoneos IPHONEOS_DEPLOYMENT_TARGET=12.0

xcodebuild -scheme BugsnagStatic -derivedDataPath DerivedData -configuration Release build SDKROOT=macosx MACOSX_DEPLOYMENT_TARGET=10.14

cp DerivedData/Build/Products/Release/libBugsnagStatic.a ~/Documents/Unreal\ Projects/PoC/Plugins/Bugsnag/Source/ThirdParty/BugsnagCocoa/Mac/Release/

cp DerivedData/Build/Products/Release-iphoneos/libBugsnagStatic.a ~/Documents/Unreal\ Projects/PoC/Plugins/Bugsnag/Source/ThirdParty/BugsnagCocoa/IOS/Release/
