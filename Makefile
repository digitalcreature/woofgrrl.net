HTML=$(addprefix public/, index.html)
CSS=$(addprefix public/style/, layout.css index.css)

all: html css

public/%.html: %.pug
	pug --pretty $< -o public/

public/style/%.css: %.sass
	sass $< $@

html: $(HTML)

css: $(CSS)

clean:
	rm -rf $(HTML)
	rm -rf $(CSS)
	rm -rf $(addsuffix .map, $(CSS))



.PHONY: all html css clean
