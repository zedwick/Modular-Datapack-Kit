#function jump_battle:mdk_rounds/event/game_state_changed/to_ingame
#
# This function is tagged (#mdk_rounds:event/game_state_changed/to_ingame)
# to be ran when the game state has changed to ingame.
#

# Reset jump score
scoreboard players reset * jump_battle_jump

# Announce start of game
tellraw @a {"text":"Game has started! JUMP!"}
