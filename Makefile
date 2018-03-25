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
	# NodeJS
	sudo ./install_node.sh
	#=======================================================================
	sudo apt upgrade -y
	sudo apt autoremove -y
	sudo apt autoclean -y
	exit

