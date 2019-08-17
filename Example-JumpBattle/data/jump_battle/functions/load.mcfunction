#function jump_battle:load
#
# This function will run on server/game load, or when loaded via the /reload command.
#

# Sets variables used by Jump Battle.
#
scoreboard objectives add jump_battle_val dummy
#
# Minimum number of jumps to win (ahead of time running out)
scoreboard players set min_jumps_to_win jump_battle_val 10

# Objective to count number of jumps each player performs
scoreboard objectives add jump_battle_jump minecraft.custom:minecraft.jump
