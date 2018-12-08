#!/bin/bash
pip install -U py2app dmgbuild wxPython
python setup.py py2app --iconfile icon.svg.icns
source scripts/make-leelaz.sh
curl -O https://zero.sjeng.org/best-network
sed \
    -e '90s|^.*$|command = ./leelaz|' \
    -e '91s|^.*$|parameters = --gtp --noponder --weights best-network|' \
    -e '96s|^.*$|command = ./leelaz|' \
    -e '97s|^.*$|parameters = --gtp --noponder --weights best-network|' \
    config.ini > config.ini_ && mv config.ini_ config.ini
python2.7 leela_zero_analysis.py --no-gui tests/example.sgf
mv config.ini best-network leelaz dist/GoReviewPartner.app/Contents/MacOS/
