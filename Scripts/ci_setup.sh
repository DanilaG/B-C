#!/bin/sh

INSTAL_TITLE = '🗜 \033[1m \033[01;32m Install '
NONE='\033[00m'

echo -e "${INSTAL_TITLE} Xcodegen"
mkdir temp
cd temp
curl -LO https://github.com/yonaskolb/XcodeGen/releases/download/2.34.0/xcodegen.zip
unzip xcodegen.zip
xcodegen/install.sh
cd ..
rm -rf temp

echo -e "${INSTAL_TITLE} SwiftGen"
brew install swiftgen

echo -e "${INSTAL_TITLE} SwiftyMocky"
brew install mint
mkdir temp && cd temp
git clone https://github.com/MakeAWishFoundation/SwiftyMocky
cd ./SwiftyMocky
make install
cd ../../ && rm -rf temp
