AUXDIR=aux
OUTDIR=out

TARGETS=$(addprefix $(OUTDIR)/,ctf.pdf)

.PHONY: all clean

all: $(TARGETS)

clean:
	rm -r $(AUXDIR) $(OUTDIR)

$(OUTDIR)/%.pdf: %.tex
	latexmk -pdflua -auxdir=$(AUXDIR) -outdir=$(OUTDIR) -silent $<
