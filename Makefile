DOCNAME="mysql-history-graph"

default: $(DOCNAME).png $(DOCNAME).svg

$(DOCNAME).png:
	dot -Tpng -o $(DOCNAME).png $(DOCNAME).dot

$(DOCNAME).svg:
	dot -Tsvg -o $(DOCNAME).svg $(DOCNAME).dot
