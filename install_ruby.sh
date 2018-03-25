#!/bin/sh
#########################################################################
# File Name: install_ruby.sh
# Author: Carson Wang
# mail: r03944040@ntu.edu.tw
# Created Time: 2018-03-25 15:28:48
#########################################################################

RUBY_VERSION=2.5

sudo add-apt-repository ppa:brightbox/ruby-ng -y
sudo apt update
sudo apt remove ruby-dev -y
sudo apt remove ruby -y
sudo rm -rf /usr/lib/ruby/
sudo rm -rf /usr/local/lib/site_ruby/
sudo rm -rf /var/lib/gems/
sudo rm -rf /usr/bin/ruby*
wget https://cache.ruby-lang.org/pub/ruby/${RUBY_VERSION}/ruby-${RUBY_VERSION}.0.tar.gz
tar xvf ruby-${RUBY_VERSION}.0.tar.gz
cd ruby-${RUBY_VERSION}.0; ./configure --prefix=/opt/ruby; sudo make; sudo make install; cd -
sudo rm -rf ruby-*

