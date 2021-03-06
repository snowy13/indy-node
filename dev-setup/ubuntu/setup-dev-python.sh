#!/bin/bash

echo 'Installing python 3.5 and pip...'
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt-get update
sudo apt-get install python3.5
sudo apt-get install python3-pip python3.5-dev
echo 'Installed python 3.5 and pip...'

echo 'Installing virtualenvwrapper'
sudo -H pip3 install virtualenvwrapper
echo '' >> ~/.bashrc
echo '# Python virtual environment wrapper' >> ~/.bashrc
echo 'export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3' >> ~/.bashrc
echo 'export WORKON_HOME=$HOME/.virtualenvs' >> ~/.bashrc
echo 'source /usr/local/bin/virtualenvwrapper.sh' >> ~/.bashrc
source ~/.bashrc
echo 'Installed virtualenvwrapper'
