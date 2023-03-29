#!/bin/sh

MODULES=$1


# Генерация Mock-ов
swiftymocky generate
for D in $MODULES/*/*/; do 
    if [ -f "$D/Mockfile" ]; then
        swiftymocky generate
    fi
done