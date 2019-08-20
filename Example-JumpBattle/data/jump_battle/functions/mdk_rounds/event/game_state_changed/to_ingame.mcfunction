#function jump_battle:mdk_rounds/event/game_state_changed/to_ingame
# 
# This function runs at the start of the game.
#
# This datapack adds this function to the function tag
# #mdk_rounds:event/game_state_changed/to_ingame
# which is ran by the MDK-Rounds datapack at the end of the function
# mdk_rounds:game_state/set_state_to_ingame
#
# This is a good place to reset or start anything needed during the game.
# 

# Reset jump score.
# Used to track number of jumps during the game.
scoreboard players reset * jump_battle_jump

# Announce start of game
tellraw @a {"text":"Game has started! JUMP!"}
