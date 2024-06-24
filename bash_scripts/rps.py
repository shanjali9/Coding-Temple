# a fully functional Rock-Paper-Scissors Game

import random

def play_rps():
    print("\nHello! Let's play Rock, Paper, Scissors!")
    print("Rock beats Scissors, Scissors beats Paper, and Paper beats Rock.\n")
    print("\nBest 2 of 3 games:")

    round = 1
    user_score = 0
    comp_score = 0

    while user_score < 2 and comp_score < 2:
        print(f"\nRound {round}! User: {user_score} vs. Computer: {comp_score}\n")
        user = input("Rock... Paper... Scissors... Shoot! (R/P/S): " )
        comp = random.choice(['R', 'P', 'S'])

        print(f"\nThe computer plays {comp}.")

        if user in ['R', 'P', 'S']:
            pass
        else:
            print("\nThat wasn't a valid play. Please input R, P, or S.")
            continue

        if user == 'R' and comp == 'S':
            print("Congrats, you win this round!")
            user_score += 1
            round += 1
        elif user == 'S' and comp == 'P':
            print("Congrats, you win this round!")
            user_score += 1
            round += 1
        elif user == 'P' and comp == 'R':
            print("Congrats, you win this round!") 
            user_score += 1
            round += 1
        elif user == comp:
            print("It's a tie! Yay us :)")
            round += 1
        else:
            print("Sorry, you lost this round. Better luck next time!")
            comp_score += 1
            round += 1

    print(f"\nFinal Score: User: {user_score} vs. Computer: {comp_score}")

    if user_score > comp_score:
        print("\nYou won the game! Sad computer.\n")
    else:
        print("\nYou lost the game. Happy computer!\n")

play_rps()