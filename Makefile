SOURCES=mysql-history-graph.dot innodb-history-graph.dot
SVGGRAPHS=$(SOURCES:.dot=.svg)
PNGGRAPHS=$(SOURCES:.dot=.png)

all: $(SOURCES) $(SVGGRAPHS) $(PNGGRAPHS)

clean:
	rm -rf $(SVGGRAPHS) $(PNGGRAPHS)

%.png: %.dot
	dot -Tpng -o $@ $<

%.svg: %.dot
	dot -Tsvg -o $@ $<
