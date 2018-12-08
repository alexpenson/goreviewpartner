#!/bin/bash
pip install py2app dmgbuild
python setup.py py2app -A
source scripts/make-leelaz.sh
curl -O https://zero.sjeng.org/best-network
gsed -i \
  -e '90s|^.*$|command = ./leelaz|'\
  -e '91s|^.*$|parameters = --gtp --noponder --weights best-network|'\
  -e '96s|^.*$|command = ./leelaz|'\
  -e '97s|^.*$|parameters = --gtp --noponder --weights best-network|' \
  config.ini
python2.7 leela_zero_analysis.py --no-gui tests/example.sgf
mv config.ini best-network leelaz dist/GoReviewPartner.app/Contents/MacOS/
