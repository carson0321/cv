RUBY_VERSION=2.5
NODE_VERSION=8.10.0

install:
	# Ruby
	sudo add-apt-repository ppa:brightbox/ruby-ng -y
	sudo apt update
	sudo apt remove ruby-dev -y
	sudo apt remove ruby -y
	#sudo apt install ruby -y
	sudo apt install ruby${RUBY_VERSION} ruby${RUBY_VERSION}-dev -y
	sudo apt upgrade -y
	# RubyGems
	sudo gem update --system
	sudo gem install rubygems-update
	sudo update_rubygems
	# Jekyll
	sudo gem install jekyll bundler
	# NodeJS
	sudo apt remove nodejs -y
	sudo rm -rf /opt/nodejs
	wget https://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}.tar.gz
	tar xvf node-v${NODE_VERSION}.tar.gz
	cd node-v${NODE_VERSION}; ./configure --prefix=/opt/nodejs; sudo make; sudo make install; cd -
	rm -rf node-v${NODE_VERSION}*
	sudo apt autoremove
	sudo apt autoclean
	exit

