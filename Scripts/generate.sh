#!/bin/sh

MODULES=$1
SCRIPTS=$2

xcodegen generate
pod install

$SCRIPTS/swift_gen.sh $MODULES
$SCRIPTS/mock_gen.sh $MODULES
