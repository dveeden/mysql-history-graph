SOURCES=mysql-history-graph.dot mysql-only-history.dot innodb-history-graph.dot mysql-bug.dot
SVGGRAPHS=$(SOURCES:.dot=.svg)
PNGGRAPHS=$(SOURCES:.dot=.png)

all: $(SOURCES) $(SVGGRAPHS) $(PNGGRAPHS)

clean:
	rm -rf $(SVGGRAPHS) $(PNGGRAPHS)

%.png: %.dot
	dot -Tpng -o $@ $<

%.svg: %.dot
	dot -Tsvg -o $@ $<
