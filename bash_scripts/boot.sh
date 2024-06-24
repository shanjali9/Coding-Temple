#! /bin/bash

# if user input's 'Y' for Yes, execute rock paper scissors .py file

read -p "Do you want to play rock, paper, scissors? (Y/N) " response

if [ $response == "Y" ]
then
    python3 rps.py
else
    echo "That's too bad, maybe next time."
fi