README.md: guessinggame.sh
	echo "# Guessing Game" > README.md
	echo "" >> README.md
	date +"## Date and Time: %Y-%m-%d %H:%M:%S" >> README.md
	echo "" >> README.md
	echo "Number of lines of code contained in guessinggame.sh:" >> README.md
	wc -l < guessinggame.sh >> README.md
clean:
	rm -f README.md

