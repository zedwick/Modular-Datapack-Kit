#function mdk_rounds:game_state/set_state_to_postgame
#
# Sets game state to PostGame, and handles any other requirements.
#
# Other datapacks can tag functions to run at the end of this function
# by adding them to any of the following function tags:
# #mdk_rounds:event/game_state_changed
# #mdk_rounds:event/game_state_changed/to_postgame
#

# Set game_state value
scoreboard players operation game_state mdk_rounds_val = state_postgame mdk_rounds_const

# Setup (start) timer
scoreboard players operation time_remaining mdk_rounds_val = postgame_timer mdk_rounds_val

# Run functions tagged to run when state changes
function #mdk_rounds:event/game_state_changed
# Run functions tagged to run when state changes to postgame...
function #mdk_rounds:event/game_state_changed/to_postgame
