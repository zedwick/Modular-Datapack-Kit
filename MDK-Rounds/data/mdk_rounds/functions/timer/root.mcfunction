#function mdk_rounds:timer/root

# if current_timer is 0 or greater, then the timer is active;
# count timer down and/or run functions.
execute if score time_remaining mdk_rounds_val >= 0 mdk_rounds_const run function mdk_rounds:timer/advance_timer