#function jump_battle:load_delayed
#
# This function is tagged (#mdk_rounds:event/loaded)
# to be ran after MDK-Rounds has loaded.
#
# No guarrantee MDK-Rounds will load before this datapack,
# so for any commands which alter scores for objectives which
# are created by the other pack we need to run them only in
# response to the other pack being loaded.
#

# Set variables used by MDK-Rounds
#
# Set length of time to wait before starting game
scoreboard players set lobby_timer mdk_rounds_val 200
# Set length of game timer to 30 seconds
scoreboard players set ingame_timer mdk_rounds_val 600
