#!/bin/bash
# brew update
# brew list python &>/dev/null || brew install python
pip install virtualenv
virtualenv --python=python2.7 --distribute --no-site-packages --unzip-setuptools env
. ./env/bin/activate
