# MDK-Rounds

Provides basic game round handling. Includes pre-game lobby, game round timer and post game period.

## Function Tag Events

Other datapacks which depend on MDK-Rounds can append functions to the following function tags, which will allow commands to be ran at the specified time.

### #mdk_rounds:event/loaded

Runs 1 tick after this datapack has loaded; this would be the best placed to alter any of the  scoreboard values described below under "Settings".

### #mdk_rounds:event/game_state_changed/to_waiting

Will run at the very start when the server is loaded, and again after the postgame phase before checking if there are enough players to start the game (countdown).

### #mdk_rounds:event/game_state_changed/to_lobby

Runs at the start of the lobby phase, when the timer begins counting down to the start of the game; would be a good time to warn players of the impending start of the game.

### #mdk_rounds:event/game_state_changed/to_ingame

Runs at the start of the game; a good place to start or reset anything needed during the game.

### #mdk_rounds:event/game_state_changed/to_postgame

Runs at the end of the game, which begins the post-game review period; this is where you would count up the scores and announce the winner(s).

## Settings

MDK-Rounds can be configured by editing the following scores. It is recommended to do so in a function appended to the function tag #mdk_rounds:event/loaded.

All of the following scores can be found in the objective ‘mdk_rounds_val‘

### min_players

Minimum players required to start the game.

Default: 2

### max_players

Maximum number of players supported in the game.

Default: 30

### lobby_timer

Length of time in seconds before the game starts.

Default: 60

### game_timer

Length of time in seconds before the game ends.

Default: 60

### postgame_timer

Length of time before players are returned to the lobby.

Default: 15

## read-only Data

The follow scoreboard values can be read, but should not be set, by other datapacks.

### game_state (mdk_rounds_val)

The current game state. Can be compared to the constants `state_waiting`, `state_lobby`, `state_ingame` and `state_postgame` below.

For example, to check if the game state is currently ingame you could use the following to run a function:

```mcfunction
execute if score game_state mdk_rounds_val = state_ingame mdk_rounds_const run function my_datapack:my_function
```

### time_remaining (mdk_rounds_val)

The current timer's remaining time. Use in lobby, ingame and postgame states. 

### state_waiting (mdk_rounds_const)

Represents the number game_state is set to when the game is waiting to start.

### state_lobby (mdk_rounds_const)

Represents the number game_state is set to when the lobby timer is counting down to start the game.

### state_ingame (mdk_rounds_const)

Represents the number game_state is set to when current in game.

### state_postgame (mdk_rounds_const)

Represents the number game_state is set to when the game has ended and players are reviewing the game.
