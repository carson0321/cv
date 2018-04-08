jekyll:
	ls -A1 | grep -v 'cv-*\|git\|Makefile' | xargs rm -rf
	cp -r cv-jekyll/ .

react:
	ls -A1 | grep -v 'cv-*\|git\|Makefile' | xargs rm -rf
	cp -r cv-react/ .
