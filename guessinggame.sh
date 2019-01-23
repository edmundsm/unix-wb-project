# This guessing game will finish when the user guesses
# the correct amount of files in the current directory

# Function to ask the question since it will be reused
function askQuestion {
	echo "Can you guess how many files are in the directory?"
	read user_answer
}

# Initialise the correct answer
correct_answer=$(ls | wc -l)

# Ask user for their first guess
askQuestion

# Until the user answer equals the correct answer this loop
# will continue to run
while [[ ! $correct_answer -eq $user_answer ]]
do
	# Let the user know if their guess is too high or low, then ask again
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

# Print congratulatory message
echo "Well done, you guessed correctly! Now get outside and climb a tree."

