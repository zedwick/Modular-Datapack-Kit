#function jump_battle:mdk_rounds/event/game_state_changed/to_lobby
#
# This function runs at the start of the lobby phase,
# when the game gets scheduled to start at the end of a timer.
#
# This datapack adds this function to the function tag
# #mdk_rounds:event/game_state_changed/to_lobby
# which is ran by the MDK-Rounds datapack at the end of the function
# mdk_rounds:game_state/set_state_to_lobby
#

# Announce start of game countdown
tellraw @a {"text":"The jump battle will commence in 10 seconds!"}
