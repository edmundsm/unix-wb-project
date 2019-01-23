all: README.md

README.md: guessinggame.sh
	echo "## The Unix Workbench Guessing Game Assignment  " > README.md
	echo "Readme file was created on `date`.  " >> README.md
	echo "Guessing game uses `wc -l < guessinggame.sh` lines of code." >> README.md

clean:
	rm README.md
