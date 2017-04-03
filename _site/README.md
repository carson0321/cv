# My-online-CV

http://kiki86151.github.io/cv/

# Requirements

* [Jekyll](https://jekyllrb.com/docs/installation/)
* [Ruby](https://www.ruby-lang.org/en/documentation/installation/)
* [RubyGems](https://rubygems.org/pages/download)
* [NodeJS](https://nodejs.org/en/download/)


# Installation

* Ruby

```bash
sudo apt-get install ruby-full
or
sudo apt-get install ruby
```

* RubyGems

```bash
sudo gem update --system
sudo gem install rubygems-update
update_rubygems
```

* NodeJS

Not recommended:
```bash
sudo apt-get install nodejs
```

complied or binary version
```bash
wget http://nodejs.org/xxxxx.tar.gz
tar xvf node.tar.gz
cd node/
./configure or ./configure --prefix=/opt/nodejs
sudo make
sudo make install
export PATH=$PATH:/opt/nodejs/bin
```

* Jekyll

```bash
gem install jekyll bundler
```

Usage
```bash
jekyll new my-awesome-site
cd my-awesome-site
bundle install
bundle exec jekyll serve
# => Now browse to http://localhost:4000
```

# Begin to run on localhost

```bash
git clone https://github.com/kiki86151/cv ~/test-cv
cd ~/test-cv
bundle install
bundle exec jekyll serve
# => Now browse to http://localhost:4000/cv/
```

# Thanks

* [sharu725/online-cv](https://github.com/sharu725/online-cv)
* [xriley/Orbit-Theme](https://github.com/xriley/Orbit-Theme)