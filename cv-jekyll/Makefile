RBENV_HOME=/opt/rbenv

install:
	# Use rbenv to install ruby
	sudo ./install_rbenv.sh
	# RubyGems
	${RBENV_HOME}/shims/gem update --system
	${RBENV_HOME}/shims/gem install rubygems-update
	${RBENV_HOME}/shims/update_rubygems
	# Jekyll, Bundler
	${RBENV_HOME}/shims/gem install jekyll bundler
	sudo chown -R carson:carson ${RBENV_HOME}
	## fix issue https://github.com/rubygems/rubygems/issues/2180
	#sudo mkdir -p /usr/lib/ruby/gems/${RUBY_VERSION}.0/gems/bundler-1.16.1/exe/
	#sudo ln -s /var/lib/gems/${RUBY_VERSION}.0/gems/bundler-1.16.1/exe/bundle /usr/lib/ruby/gems/${RUBY_VERSION}.0/gems/bundler-1.16.1/exe/
	# NodeJS
	sudo ./install_node.sh
	sudo apt upgrade -y
	sudo apt autoremove -y
	sudo apt autoclean -y
	exit

