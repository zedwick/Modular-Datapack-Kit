#function jump_battle:mdk_rounds/event/game_state_changed/to_postgame
#
# This function is tagged (#mdk_rounds:event/game_state_changed/to_postgame)
# to be ran when the game state has changed to postgame.
#

# Announce scores
tellraw @a {"text":"That's all folks. Here's the scores: "}
execute as @a run tellraw @a {"text":"Wow! ","extra":[{"selector":"@s"},{"text":" jumped "},{"score":{"objective":"jump_battle_jump","name":"@s"},"color":"aqua"},{"text":" times!"}]}