#!/bin/sh

MODULES=$1

# Генерация Sources
echo "📖 SwiftGen Start 🌄"
for D in $MODULES/*/*/; do 
    if [ -f "$D/swiftgen.yml" ]; then
        mkdir "$D/Generated"
        ./Pods/SwiftGen/bin/swiftgen
    fi
done
echo "📖 SwiftGen End 🌅"