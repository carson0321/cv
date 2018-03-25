#!/bin/sh
#########################################################################
# File Name: install_node.sh
# Author: Carson Wang
# mail: r03944040@ntu.edu.tw
# Created Time: 2018-03-25 15:32:29
#########################################################################

NODE_VERSION=8.10.0
NODE_HOME=/opt/nodejs

sudo apt remove nodejs -y
sudo rm -rf ${NODE_HOME}
wget https://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}.tar.gz
tar xvf node-v${NODE_VERSION}.tar.gz
cd node-v${NODE_VERSION}; ./configure --prefix=${NODE_HOME}; sudo make; sudo make install; cd -
sudo rm -rf node-v${NODE_VERSION}*
sudo chown -R carson:carson ${NODE_HOME}
