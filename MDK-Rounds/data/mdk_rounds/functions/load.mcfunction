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
# Length of time in seconds to spend on setting up for the lobby.
scoreboard players set setup_lobby_timer mdk_rounds_val 0
#
# Length of time in seconds before the game starts.
scoreboard players set lobby_timer mdk_rounds_val 60
#
# Length of time in seconds to spend on setting up for the game.
scoreboard players set setup_ingame_timer mdk_rounds_val 0
#
# Length of time in seconds before the game ends.
scoreboard players set ingame_timer mdk_rounds_val 60
#
# Length of time in seconds to spend on setting up for the postgame.
scoreboard players set setup_postgame_timer mdk_rounds_val 0
#
# Length of time before players are returned to the lobby.
scoreboard players set postgame_timer mdk_rounds_val 15

# Variables which are used in processing the game, can be read by other functions.
#
# Game state. 0: Waiting, 1:Lobby, 2: InGame, 3:PostGame, 4: setup_Lobby, 5: setup_InGame, 6: setup_PostGame
scoreboard players set game_state mdk_rounds_val 0
#
# Current time remaining
scoreboard players set time_remaining mdk_rounds_val -1

# Constants
#
scoreboard objectives add mdk_rounds_const dummy
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
scoreboard players set state_setup_lobby mdk_rounds_const 4
scoreboard players set state_setup_ingame mdk_rounds_const 5
scoreboard players set state_setup_postgame mdk_rounds_const 6
#
#run function for counting players
function mdk_rounds:count_players/count_players

# Run commands from other datapacks tagged to run after this pack loads.
#
# We probably need to run this on a delay to ensure the other packs have loaded.
#
schedule function #mdk_rounds:event/loaded 1t
