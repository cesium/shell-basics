MEXT = md
SRC = $(wildcard *.$(MEXT))
SLIDES=$(SRC:.md=.html)


slides:	clean $(SLIDES)

%.html:	%.md
	pandoc -t revealjs -s -o $@ $<
clean:
	rm -f *.html 
