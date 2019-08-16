#function mdk_rounds:load

# Variables to be configired per game
#
scoreboard objectives add mdk_rounds_val dummy
#
# Minimum players required to start the game.
scoreboard players set min_players mdk_rounds_val 2
#
# Maximum number of players supported in the game.
scoreboard players set max_players mdk_rounds_val 30
#
# Length of time in seconds before the game starts.
scoreboard players set lobby_timer mdk_rounds_val 60
#
# Length of time in seconds before the game ends.
scoreboard players set game_timer mdk_rounds_val 60
#
# Length of time before players are returned to the lobby.
scoreboard players set postgame_timer mdk_rounds_val 15

# Variables which are used in processing the game, can be read by other functions.
#
# Game state. 0: Waiting, 1:Lobby, 2: InGame, 3:PostGame
scoreboard players set game_state mdk_rounds_val 0
#
# Current time remaining
scoreboard players set time_remaining mdk_rounds_val -1

# Constants
#
# Numbers
scoreboard players set 0 mdk_rounds_const 0
scoreboard players set -1 mdk_rounds_const -1
#
# game_state values
scoreboard players set state_waiting mdk_rounds_const 0
scoreboard players set state_lobby mdk_rounds_const 1
scoreboard players set state_ingame mdk_rounds_const 2
scoreboard players set state_postgame mdk_rounds_const 3
