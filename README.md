# Battleships

## Description

This project is to develop more advanced skills in Object Orientated
design and programming.

The task is to build a game that model the paper-based game,
Battleships. Each player has a 10x10 two dimensional board which they place a number of
battleships of varying sizes.

Once each player places their ships on their board they takes turns to
take shots at their opponents board. If the square is occupied by
a ship the attacking player notes a hit and a miss if the grid is empty.

The game is over when all of one player's ships have been. The winner is
the player with ships left on the board.

## Domain Model

#### Classes

####**Game**

######*Collaborators*
Player, Board, Ship

######*Responsibilities*
1. Initialise game
2. Reset Game
3. Keeps a tally of number of hits ship receives
4. Keeps score of overall games won
5. Declares the winner

######*Interactions*
The *Game* class is responsible for initialising the start of the game
by interacting with the *Player* class. Upon initialisation the *Board*
is created and the *Ships* are made ready.

Every time a *Ship* is hit the *Game* class keeps a tally. Once all ships have been hit, *Game* notifies the players of who has won the game.

####**Player**

####**Board**

######*Collaborators*
Player, Ship, Game

######*Responsibilities*
1. Knows the board size is
2. Knows which grid spaces are occupied by ships
3. Knows where players have deployed missiles

######*Interactions*
The *Board* is initialised when the *Game* declares it a new game. Upon starting the *Game*, each *Player* places *Ships* on their *Board*.  Whenever a *Player* has their turn, they nominate a gridpoint to launch their missile.  The *Board* will know if this is a hit or miss.  If a *Ship* has been hit, the *Board* will notify the *Ship*.    

####**Ship**
The game
