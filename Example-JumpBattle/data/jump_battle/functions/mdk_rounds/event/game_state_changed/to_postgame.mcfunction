#function jump_battle:mdk_rounds/event/game_state_changed/to_postgame
#
# This function runs at the end of the game, and the start of a post-game
# period before players would be returned to the lobby to wait for the next game.
#
# This datapack adds this function to the function tag
# #mdk_rounds:event/game_state_changed/to_postgame
# which is ran by the MDK-Rounds datapack at the end of the function
# mdk_rounds:game_state/set_state_to_postgame
#
# This would be a good place to calculate the final scores for players,
# and announce any winner(s).
#

# Announce scores
tellraw @a {"text":"That's all folks. Here's the scores: "}
execute as @a run tellraw @a {"text":"Wow! ","extra":[{"selector":"@s"},{"text":" jumped "},{"score":{"objective":"jump_battle_jump","name":"@s"},"color":"aqua"},{"text":" times!"}]}