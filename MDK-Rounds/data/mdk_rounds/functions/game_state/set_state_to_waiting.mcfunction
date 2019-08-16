#function mdk_rounds:game_state/set_state_to_waiting
#
# Sets game state to Waiting, and handles any other requirements.
#
# Other datapacks can tag functions to run at the end of this function
# by adding them to any of the following function tags:
# #mdk_rounds:event/game_state_changed
# #mdk_rounds:event/game_state_changed/to_waiting
#

# Set game_state value
scoreboard players operation game_state mdk_rounds_val = state_waiting mdk_rounds_const

# disable timer
scoreboard players set time_remaining mdk_rounds_val -1

# Run functions tagged to run when state changes
function #mdk_rounds:event/game_state_changed
# Run functions tagged to run when state changes to waiting...
function #mdk_rounds:event/game_state_changed/to_waiting