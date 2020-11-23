#function mdk_rounds:timer/update_state_from_waiting
#
# Will change the current game_state value if conditions are met.
# game_state will always be equal to the state_waiting const (0)
# at the time this function is ran.
#

# If there are the minimum number of players online, switch to lobby state and begin timer.
#execute if score player_count mdk_rounds_val >= min_players mdk_rounds_val run function mdk_rounds:game_state/set_state_to_setup_lobby
