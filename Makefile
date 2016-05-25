RSYNC=$(shell pwd)/sync.sh
SITEPATH=/Users/heades/website/heades.github.io/CSCI3300/

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
	cp -R _site/* $(SITEPATH)
	cd $(SITEPATH) && git add . && git commit -a -m 'Updating CSCI:3300 Website.' && git push

slides:
	cd slides && make && cd ..

handouts: $(pdfObjects)

pdf/%.pdf: lectures/%.lhs
	-$(PANDOCHANDOUT) $? -o $@ 

