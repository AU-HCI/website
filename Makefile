defaults := defaults/site
latex_defaults := defaults/syllabus
md_dir := markdown
md_sources := $(wildcard $(md_dir)/*.md)
html_dir := hciweb
html_targets := $(subst $(md_dir), $(html_dir),$(subst .md,.html,$(md_sources)))
html_layout := layouts/site.html
latex_layout := layouts/syllabus.latex
lectures_dir := lectures
lectures_target := $(html_dir)/includes/$(lectures_dir)

sitepath=/Users/heades/website/heades.github.io/$(html_dir)
notespath := lecture-notes

all : $(html_targets) $(html_dir)/includes/syllabus.pdf $(lecture_pdfs)
	rsync -a $(lectures_dir)/ $(lectures_target)

$(html_dir)/%.html : $(md_dir)/%.md Makefile $(html_layout) $(defaults).yaml
	pandoc -s -d $(defaults) -o $@ $<

$(html_dir)/includes/syllabus.pdf : $(md_dir)/index.md $(latex_layout) $(latex_defaults).yaml
	pandoc -s -d $(latex_defaults) -o $(html_dir)/includes/syllabus.pdf $(md_dir)/index.md

serve :
	http-server

watch :
	find $(md_dir) | entr -c 'make'

push: all
	cp -vR $(html_dir)/* $(sitepath)
	git add . && git commit -a -m 'Updating HCI Website.' && git push	
	cd $(sitepath) && git add . && git commit -a -m 'Updating HCI Website.' && git push	

clean :
	rm -f hciweb/*.html
	rm -rf $(sitepath)/*
