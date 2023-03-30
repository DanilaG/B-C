![example workflow](https://github.com/DanilaG/B-C/actions/workflows/PushTests.yml/badge.svg)

# B&C
B&C (Bulls and Cows) is a logical game where you should guess the number.

## First run

1. Install SwiftGen
```
brew install swiftgen
```

2. Install XcodeGen
```
brew install xcodegen
```

3. Install SwiftyMocky
```
brew install mint
git clone https://github.com/MakeAWishFoundation/SwiftyMocky
cd SwiftyMocky
make install
cd .. && rm -rf SwiftyMocky
```

4. Install cocoapods-developing-folder
```
gem install cocoapods-developing-folder
```

5. Project generation
For the project generation run the following commond:
```
./Scripts/generate.sh ./Modules ./Scripts
```
