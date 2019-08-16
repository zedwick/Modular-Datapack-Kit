#function mdk_rounds:timer/update_state
#
# Changes the value game_state when conditions are met.
#

# Current state: waiting
execute if score current_state mdk_rounds_val = state_waiting mdk_rounds_const run function mdk_rounds:timer/update_state_from_waiting

# Current state: lobby
execute if score current_state mdk_rounds_val = state_lobby mdk_rounds_const run function mdk_rounds:timer/update_state_from_lobby

# Current state: ingame
execute if score current_state mdk_rounds_val = state_ingame mdk_rounds_const run function mdk_rounds:timer/update_state_from_ingame

# Current state: postgame
execute if score current_state mdk_rounds_val = state_postgame mdk_rounds_const run function mdk_rounds:timer/update_state_from_postgame