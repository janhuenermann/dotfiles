MAIN_TEX=main
BUILD_DIR=build

build: mkbuilddir
	pdflatex --interaction=errorstopmode -enc -etex -mltex -output-directory=$(BUILD_DIR) $(MAIN_TEX).tex
	mv $(BUILD_DIR)/$(MAIN_TEX).pdf $(BUILD_DIR)/$(MAIN_TEX).2.pdf
	gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dNOPAUSE -dQUIET -dBATCH -dPrinted=false -sOutputFile=$(BUILD_DIR)/$(MAIN_TEX).pdf $(BUILD_DIR)/$(MAIN_TEX).2.pdf
	rm -f $(BUILD_DIR)/$(MAIN_TEX).2.pdf 2> /dev/null

biber: mkbuilddir
	biber --output_directory $(BUILD_DIR) $(MAIN_TEX)

clean:
	rm -rf $(BUILD_DIR)

mkbuilddir:
	mkdir -p $(BUILD_DIR)