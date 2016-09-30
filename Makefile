.PHONY: all

all: paper.html paper.md clean

paper.md: paper/sections/00-abstract.md paper/sections/01-introduction.md paper/sections/02-discussion.md paper/sections/03-conclusions.md
	cd paper/sections; pandoc *.md -s -o paper.md
	cd paper/sections; mv paper.md ../

paper.html: paper.md
	cd paper/sections; pandoc paper.md -s -o paper.html
	cd paper/sections; mv paper.html ../

clean: 
	rm paper.md