# My-online-CV

https://carson0321.github.io/cv/

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
sudo update_rubygems
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
sudo gem install jekyll bundler
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

# Credits

* [sharu725/online-cv](https://github.com/sharu725/online-cv)
* [xriley/Orbit-Theme](https://github.com/xriley/Orbit-Theme)

# License

This software is licensed under the [MIT license](http://en.wikipedia.org/wiki/MIT_License).

```
MIT License

Copyright (c) 2017 Carson Wang <kiki86151@hotmail.com>

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

```

© 2017 Carson Wang.

