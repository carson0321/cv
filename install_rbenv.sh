#!/bin/sh
#########################################################################
# File Name: install_rbenv.sh
# Author: Carson Wang
# mail: r03944040@ntu.edu.tw
# Created Time: 2018-03-25 15:28:48
#########################################################################

RUBY_VERSION=2.5.0
RBENV_HOME=/opt/rbenv

# install rbenv
# https://github.com/rbenv/rbenv#installation
sudo apt remove ruby-dev -y
sudo apt remove ruby -y
sudo rm -rf /opt/ruby
sudo rm -rf ${RBENV_HOME}
sudo mkdir -p ${RBENV_HOME}
git clone https://github.com/rbenv/rbenv.git ${RBENV_HOME}
sudo rm -rf ${RBENV_HOME}/.git
cd ${RBENV_HOME} && src/configure && make -C src
${RBENV_HOME}/bin/rbenv init

# install ruby-build
# https://github.com/rbenv/ruby-build
sudo mkdir -p ${RBENV_HOME}/plugins
git clone https://github.com/rbenv/ruby-build.git ${RBENV_HOME}/plugins/ruby-build
sudo rm -rf ${RBENV_HOME}/plugins/ruby-build/.git

# install ruby
sudo apt install -y libssl-dev libreadline-dev
export RBENV_ROOT=${RBENV_HOME}
${RBENV_HOME}/bin/rbenv install ${RUBY_VERSION}
${RBENV_HOME}/bin/rbenv global ${RUBY_VERSION}
sudo chown -R carson:carson ${RBENV_HOME}
