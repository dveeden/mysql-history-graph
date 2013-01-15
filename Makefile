DOCNAME="mysql-history-graph"

default: $(DOCNAME).png

$(DOCNAME).png:
	dot -Tpng -o $(DOCNAME).png $(DOCNAME).dot
