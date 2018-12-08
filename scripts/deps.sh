#!/bin/bash
# brew update
# brew list python &>/dev/null || brew install python
pip install virtualenv
brew install gnu-sed
virtualenv --python=python2.7 --distribute --no-site-packages --unzip-setuptools env
. ./env/bin/activate
