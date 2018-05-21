all: README.md

README.md:
	echo "Unix Workbench Assignment" > README.md
	date >> README.md
	wc -l < guessinggame.sh | bc >> README.md

clean:
	rm README.md