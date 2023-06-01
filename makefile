.PHONY: build_pdf
build_pdf: clean figures
	pdflatex book.tex
	tex4ebook -c tex4ebook.cfg -f epub book.tex

.PHONY: clean_figures
clean_figures:
	cd figures
	rm -rf figures/*.aux
	rm -rf figures/*.fdb_latexmk
	rm -rf figures/*.fls
	rm -rf figures/*.log
	rm -rf figures/*.pdf
	rm -rf figures/*.png

.PHONY: figures
figures: clean_figures
	cd figures && find . -name "fig-*.tex" -exec pdflatex '{}' \;

.PHONY: clean
clean: clean_figures
	rm -f book.blg
	rm -f book.bbl
	rm -f book.aux
	rm -f book.out
	rm -f book.toc
	rm -f book.run.xml
	rm -f book.bcf
	rm -f book.pdf
	rm -f book.log
	rm -f book.mobi
	rm -f book.4ct
	rm -f book.4tc
	rm -f book.dvi
	rm -f book.epub
	rm -f book.css
	rm -f book.fdb_latexmk
	rm -f book.fls
	rm -f book.idv
	rm -f book.lg
	rm -f book.ncx
	rm -f book.tmp
	rm -f book.xref
	rm -f book*.svg
	rm -f book*.html
	rm -f book*.xhtml
	rm -rf book-epub/
	rm -rf book-epub3/
	rm -rf book-mobi/
	rm -rf book-azw3/
	rm -rf book.azw3
	rm -f *.pdf
	rm -f output.log
	rm -f content.opf
