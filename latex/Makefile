MAIN_TEX=main

build:
	pdflatex $(MAIN_TEX).tex -quiet -enc -etex -mltex
	mv $(MAIN_TEX).pdf $(MAIN_TEX).2.pdf
	gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dNOPAUSE -dQUIET -dBATCH -dPrinted=false -sOutputFile=$(MAIN_TEX).pdf $(MAIN_TEX).2.pdf
	rm -f $(MAIN_TEX).2.tex 2> /dev/null

biber:
	biber main

clean:
	rm -f main.bbl main.bcf main.blg main.log main.out main.pdf main.run.xml texput.log main.toc main.aux 2> /dev/null