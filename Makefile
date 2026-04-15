SOURCE = src
DEST = out

SRC_TEX := $(wildcard $(SOURCE)/*.tex)
PDFS := $(patsubst ${SOURCE}/%.tex, ${DEST}/%.pdf, ${SRC_TEX})

clean:
	rm $(DEST)/*.log
	rm $(DEST)/*.aux

$(DEST)/%.pdf: $(SOURCE)/%.tex
	pdflatex --output-directory="${DEST}" "$<" 

all: $(PDFS)
