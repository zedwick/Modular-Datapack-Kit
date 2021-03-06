#function mdk_rounds:timer/update_state_from_postgame
#
# Will change the current game_state value if conditions are met.
# game_state will always be equal to the state_postgame const
# at the time this function is ran.
#

# If the timer has run out (-1), then set state to setup_waiting.
execute if score time_remaining mdk_rounds_val = -1 mdk_rounds_const run function mdk_rounds:game_state/set_state_to_waiting
