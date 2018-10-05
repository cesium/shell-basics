SRC := $(filter-out README.md, $(wildcard *.md))
THEME := custom

all: slides css

slides: $(SRC:.md=.html)

%.html: %.md 
	pandoc -i $< -t revealjs --template styles/revealjs.html --slide-level=2 -V theme=$(THEME) -o $@

css/$(THEME).css: styles/themes/$(THEME).scss
	sass $< $@

css: css/$(THEME).css

clean:
	-rm $(SRC:.md=.html) css/*.css

## if you have watchexec installed: https://github.com/mattgreen/watchexec
watch:
	watchexec --exts md,js,scss,html make
