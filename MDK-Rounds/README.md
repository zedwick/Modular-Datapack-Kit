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

All of the following scores can be found in the objective `mdk_rounds_val`

### min_players

Minimum players required to start the game.

Default: 2

### max_players

Maximum number of players supported in the game.

Default: 30

### lobby_timer

Length of time in seconds before the game starts.

Set to -2 to disable automatic timer. See [Managing the Game State](#MAnaging the Game State)

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

## Managing the Game State

In some cases you may want to override the automatic timer to change the game state; for example if a player has met the criteria for winning the game, you may want to end the game and display the results in the PostGame.

The following functions can be used to change the state, each will fire the appropriate function tag events.

```
function mdk_rounds:game_state/set_state_to_waiting
function mdk_rounds:game_state/set_state_to_setup_lobby
function mdk_rounds:game_state/set_state_to_lobby
function mdk_rounds:game_state/set_state_to_setup_ingame
function mdk_rounds:game_state/set_state_to_ingame
function mdk_rounds:game_state/set_state_to_setup_postgame
function mdk_rounds:game_state/set_state_to_postgame
```

It is recommended to move to the next state in the order presented above. If the current state matches `lobby_state` then you would run `function mdk_rounds:game_state/set_state_to_setup_ingame` to move the state on to match `setup_ingame_state`. In some cases you may choose to skip straight to certain states, but you should only do this if you are sure skipping the other states will not cause any problems.

### Disable the timer

If you would like to manage one or more game states entirely, without the automatic timer, you can disable the timer per state by setting the timer value to `-2`.

For example, if you would like to disable the lobby timer so you can start the game only once all players/teams have indicated they are ready, you can set the `lobby_timer` value to `-2`:

```
scoreboard players set lobby_timer mdk_rounds_val -2
```

With the lobby timer disabled in this manner, the lobby period will never end unless explicitly end by changing the game state as described above.

## Setup phase

Each of the 3 primary game state (`lobby_state`, `ingame_state`, `postgame_state`) have 3 accompanying *setup* states (`setup_lobby_state`, `setup_ingame_state`, `setup_postgame_state`) which precede them. These are intended to provide time to perform any setup tasks required for these primary states. This could include very intensive tasks which may need to be spread out over several ticks such as loading an arena from structure files, or relatively simple tasks which can be completed in just 1 tick.

By default the setup states will last for just 1 tick, allowing for most simple setup tasks to be completed. If you have tasks which will need more than 1 tick to complete, you have 2 options for extending the time allotted for the setup phase.

### Extend the timer

You may choose to extend the timer by a few ticks. This is perfectly fine if you know your setup will always take a certain number of ticks to complete. If we know we need 20 ticks to setup for the game, we can set the `setup_ingame_timer` value to `20`:

```
scoreboard players set setup_ingame_timer mdk_rounds_val 20
```

### Disable the timer

If your setup tasks can take a variable amount of time, or the number of required ticks is otherwise unknown, it is recommended to disable the timer so you can change the state once all your setup tasks are complete:

```
scoreboard players set setup_ingame_timer mdk_rounds_val -2
```

Once your setup tasks are complete, and you are ready for the game to start, you can change the state from `setup_ingame_state` to `ingame_state` using the following command (as described in [Managing the Game State](#MAnaging the Game State)):

```
function mdk_rounds:game_state/set_state_to_ingame
```

