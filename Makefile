GEM_VERSION=2.7.6

install:
	# Ruby
	sudo ./install_ruby.sh
	## RubyGems
	wget https://github.com/rubygems/rubygems/archive/v${GEM_VERSION}.tar.gz
	tar xvf v${GEM_VERSION}.tar.gz
	$(shell cd rubygems-${GEM_VERSION}; sudo /opt/ruby/bin/ruby setup.rb; cd -)
	sudo rm -rf rubygems-${GEM_VERSION}* v${GEM_VERSION}*
	sudo gem update --system
	sudo gem install rubygems-update
	sudo update_rubygems
	# Jekyll
	sudo gem install jekyll bundler
	## fix issue https://github.com/rubygems/rubygems/issues/2180
	#sudo mkdir -p /usr/lib/ruby/gems/${RUBY_VERSION}.0/gems/bundler-1.16.1/exe/
	#sudo ln -s /var/lib/gems/${RUBY_VERSION}.0/gems/bundler-1.16.1/exe/bundle /usr/lib/ruby/gems/${RUBY_VERSION}.0/gems/bundler-1.16.1/exe/
	# NodeJS
	sudo ./install_node.sh
	sudo apt upgrade -y
	sudo apt autoremove -y
	sudo apt autoclean -y
	exit

