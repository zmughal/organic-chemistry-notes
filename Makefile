## Config global
LATEXMK = latexmk $(LATEXMKRC_FLAGS) -f -pdf -silent -diagnostics
XELATEX_OPT := -e '$$pdflatex=q/xelatex -synctex=1 %O %S/'

ALL_TARGETS := note/note.pdf

all: $(ALL_TARGETS)

note/%.pdf: note/%.tex
	-$(LATEXMK) --outdir=note $<

include ~/sw_projects/zmughal/scraps/scraps/build/latex/clean.mk

cleanall::
	rm -Rf $(ALL_TARGETS)
