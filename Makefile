RUBY_VERSION=2.5
GEM_VERSION=2.7.6
NODE_VERSION=8.10.0

install:
	# Ruby
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
	# RubyGems
	wget https://github.com/rubygems/rubygems/archive/v${GEM_VERSION}.tar.gz
	tar xvf v${GEM_VERSION}.tar.gz
	cd rubygems-${GEM_VERSION}; sudo /opt/ruby/bin/ruby setup.rb; cd -
	sudo rm -rf rubygems-${GEM_VERSION}*
	sudo gem update --system
	sudo gem install rubygems-update
	sudo update_rubygems
	# Jekyll
	sudo gem install jekyll bundler
	# fix issue https://github.com/rubygems/rubygems/issues/2180
	sudo mkdir -p /usr/lib/ruby/gems/${RUBY_VERSION}.0/gems/bundler-1.16.1/exe/
	sudo ln -s /var/lib/gems/${RUBY_VERSION}.0/gems/bundler-1.16.1/exe/bundle /usr/lib/ruby/gems/${RUBY_VERSION}.0/gems/bundler-1.16.1/exe/
	# NodeJS
	sudo apt remove nodejs -y
	sudo rm -rf /opt/nodejs
	wget https://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}.tar.gz
	tar xvf node-v${NODE_VERSION}.tar.gz
	cd node-v${NODE_VERSION}; ./configure --prefix=/opt/nodejs; sudo make; sudo make install; cd -
	sudo rm -rf node-v${NODE_VERSION}*
	sudo apt upgrade -y
	sudo apt autoremove
	sudo apt autoclean
	exit

