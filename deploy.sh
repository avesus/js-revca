#!/bin/sh

set -e

echo ===========================
echo ==  Publishing JS-revca  ==
echo ===========================

ODIR=../homepage-sources/src/js-revca

cp -r *.svg images *.html scripts-src *.css LICENSE README.md $ODIR
cp -r scripts/revca_singlerot.js scripts/minified.js $ODIR/scripts


echo =============================================
echo ==  Done building, now publishing on site  ==
echo =============================================

cd $ODIR
sh ./publish.sh
