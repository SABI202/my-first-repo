#!/bin/bash

# Function to count the number of files in the current directory
count_files() {
    local num_files=$(ls -1 | wc -l)
    echo "$num_files"
}

# Main function of the guessing game
guessing_game() {
    local num_files=$(count_files)
    local guess=-1

    echo "Welcome to the Guessing Game!"

    while [ "$guess" -ne "$num_files" ]; do
        read -p "Guess the number of files in the current directory: " guess

        if [ "$guess" -lt "$num_files" ]; then
            echo "Too low! Try again."
        elif [ "$guess" -gt "$num_files" ]; then
            echo "Too high! Try again."
        else
            echo "Congratulations! You guessed the correct number of files ($num_files)!"
        fi
    done
}

# Call the main function to start the game
guessing_game

