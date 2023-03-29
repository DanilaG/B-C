#!/bin/sh

MODULES=$1

# Генерация Sources
echo "📖 SwiftGen Start 🌄"
for D in $MODULES/*/*/; do 
    if [ -f "$D/swiftgen.yml" ]; then
        mkdir "$D/Generated"
    fi
done
swiftgen
echo "📖 SwiftGen End 🌅"