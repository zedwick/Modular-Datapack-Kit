#function that counts players online
#first schedule itself to run again...
schedule function mdk_rounds:count_players/count_players 20t
#
#count the players
scoreboard players set total_players mdk_rounds_val 0
execute as @a run scoreboard players add total_players mdk_rounds_val 1