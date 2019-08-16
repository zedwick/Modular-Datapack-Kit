#function mdk_rounds:advance_timer
#
# This function is only run if the timer is currently active.
# Perform actions based on current time, and counts time_remaining down
#

# Count down time_remaining.
scoreboard players remove time_remaining mdk_rounds_val 1

# Update state if conditions are met.
# If timer has reached -1, or there are not enoug players left in the game.
function mdk_rounds:timer/update_state
