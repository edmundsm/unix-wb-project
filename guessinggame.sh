# This guessing game will finish when the user guesses
# the correct amount of files in the current directory

# Function to ask the question since it will be reused
function askQuestion {
	echo "Can you guess how many files are in the directory?"
	read user_answer
}

#Initialise the correct answer
correct_answer=$(ls | wc -l)

askQuestion

while [[ ! $correct_answer -eq $user_answer ]]
do
	if [[ $user_answer -gt $correct_answer ]]
	then
		echo "Answer too high, try again."
		askQuestion
	elif [[ $user_answer -lt $correct_answer ]]
	then
		echo "Answer too low, try again."
		askQuestion
	fi
done

echo "Well done, you guessed correctly! Now get outside and climb a tree."

