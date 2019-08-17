#function jump_battle:mdk_rounds/event/game_state_changed/to_lobby
#
# This function is tagged (#mdk_rounds:event/game_state_changed/to_lobby)
# to be ran when the game state has changed to lobby.
#

# Announce start of game
tellraw @a {"text":"The jump battle will commence in 10 seconds!"}
