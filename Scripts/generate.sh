#!/bin/sh

MODULES=$1
SCRIPTS=$2

$SCRIPTS/swift_gen.sh $MODULES
$SCRIPTS/mock_gen.sh $MODULES

xcodegen generate
pod install
