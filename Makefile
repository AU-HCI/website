RSYNC=$(shell pwd)/sync.sh
SITEUSER=heades@alonzo.metatheorem.org
SITEPATH=/home/heades/www/metatheorem.org/public_html/courses/3300-PLC

PANDOCHANDOUT=pandoc --highlight-style=tango --from=markdown+lhs --chapters --latex-engine=pdflatex --template=templates/handout.latex --filter templates/inside.hs

lhsObjects  := $(wildcard lectures/*.lhs)
pdfObjects  := $(patsubst lectures/%.lhs,pdf/%.pdf,$(wildcard lectures/*.lhs))

all: website 
	stack exec -- website rebuild
	cp css/syntax-rj.css _site/css/syntax.css
	cp lectures/*.lhs _site/lectures/
	cp -p -r slides _site/
	cp homeworks/*.lhs _site/homeworks/
	cp final/*.lhs _site/final/

website: src/Site.hs
	stack build

clean:
	rm -rf *.hi *.o .*.swp .*.swo website _site/ _cache/

update: all
	scp -r _site/* $(SITEUSER):$(SITEPATH)

slides:
	cd slides && make && cd ..

handouts: $(pdfObjects)

pdf/%.pdf: lectures/%.lhs
	-$(PANDOCHANDOUT) $? -o $@ 

