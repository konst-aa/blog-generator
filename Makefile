generator: generator.scm
	csc generator.scm -o generator
blog: generator
	rm -rf rendered
	./generator -f example/items -t example/h.html -a articles.json -o docs
	cp example/stylesheet.css docs
