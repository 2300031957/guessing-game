#!/bin/bash

function get_file_count {
  echo $(ls -1 | wc -l)
}

echo "Welcome to the Guessing Game!"
echo "Can you guess how many files are in the current directory?"

file_count=$(get_file_count)
user_guess=-1

while [[ $user_guess -ne $file_count ]]
do
  read -p "Enter your guess: " user_guess

  if [[ $user_guess -lt $file_count ]]; then
    echo "Too low! Try again."
  elif [[ $user_guess -gt $file_count ]]; then
    echo "Too high! Try again."
  fi
done

echo "Congratulations! You guessed right. 🎉"
