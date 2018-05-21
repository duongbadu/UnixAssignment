#/bin/bash
#File: guessinggame.sh

function main {

	echo -n "Guess how many files are in the current directory: "
	read guess

	local result=$(ls -1 | wc -l | bc)

	while [[ guess -ne result ]]
	do

		if [[ guess -lt result ]]
		then
			echo "too low!"
		else
			echo "too high!"
		fi

		echo -n "Please try again: "
		read guess
	done

	echo "Congratulation! you're right"
}

main