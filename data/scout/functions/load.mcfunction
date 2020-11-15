
#> Trigger
scoreboard objectives add Scout trigger
#> Stored
scoreboard objectives add Scout_Dimension dummy
scoreboard objectives add Scout_ForceLoad dummy
scoreboard objectives add Scout_Gamemode dummy
scoreboard objectives add Scouting dummy
scoreboard objectives add Scout_x dummy
scoreboard objectives add Scout_y dummy
scoreboard objectives add Scout_z dummy
#> Checks
scoreboard objectives add Scout_Air air
scoreboard objectives add Scout_Safe dummy
scoreboard objectives add Scout_NotSafe dummy
scoreboard objectives add Scout_Cooldown dummy
#> Vanilla+
scoreboard objectives add VP.Scouting dummy

execute unless score #Loaded Scout_Timer matches 1 run tellraw @a {"text":"Scouting Datapack"}
execute unless score #Loaded Scout_Timer matches 1 run scoreboard players set #Loaded Scout_Timer 1
