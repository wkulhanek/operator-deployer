#!/bin/bash
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py
pip install virtualenv
virtualenv $HOME/smooth_operator_ve
source $HOME/smooth_operator_ve/bin/activate
pip install pip --upgrade
pip install ansible
pip install openshift