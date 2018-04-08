jekyll:
	find . | grep -v 'cv-*\|git\|Makefile' -print0 | xargs rm -rf
	cp -r cv-jekyll/* .

react:
	find . | grep -v 'cv-*\|git\|Makefile' | xargs rm -rf
	cp -r cv-react/* .
