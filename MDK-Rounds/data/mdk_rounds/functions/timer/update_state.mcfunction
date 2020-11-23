#function mdk_rounds:timer/update_state
#
# Changes the value game_state when conditions are met.
#

# Current state: setup_waiting
execute if score game_state mdk_rounds_val = state_setup_waiting mdk_rounds_const run function mdk_rounds:timer/update_state_from_setup_waiting

# Current state: waiting
execute if score game_state mdk_rounds_val = state_waiting mdk_rounds_const run function mdk_rounds:timer/update_state_from_waiting

# Current state: setup_lobby
execute if score game_state mdk_rounds_val = state_setup_lobby mdk_rounds_const run function mdk_rounds:timer/update_state_from_setup_lobby

# Current state: lobby
execute if score game_state mdk_rounds_val = state_lobby mdk_rounds_const run function mdk_rounds:timer/update_state_from_lobby

# Current state: setup_ingame
execute if score game_state mdk_rounds_val = state_setup_ingame mdk_rounds_const run function mdk_rounds:timer/update_state_from_setup_ingame

# Current state: ingame
execute if score game_state mdk_rounds_val = state_ingame mdk_rounds_const run function mdk_rounds:timer/update_state_from_ingame

# Current state: setup_postgame
execute if score game_state mdk_rounds_val = state_setup_postgame mdk_rounds_const run function mdk_rounds:timer/update_state_from_setup_postgame

# Current state: postgame
execute if score game_state mdk_rounds_val = state_postgame mdk_rounds_const run function mdk_rounds:timer/update_state_from_postgame
