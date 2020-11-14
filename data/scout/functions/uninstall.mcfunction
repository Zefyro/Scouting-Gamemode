
#> Trigger
scoreboard objectives remove Scout
#> Checks
scoreboard objectives remove Scout_Dimension
scoreboard objectives remove Scout_ForceLoad
scoreboard objectives remove Scout_Gamemode
scoreboard objectives remove Scout_x
scoreboard objectives remove Scout_y
scoreboard objectives remove Scout_z
#> Dangerous
scoreboard objectives remove Scout_Air
scoreboard objectives remove Scout_Safe
scoreboard objectives remove Scout_NotSafe
scoreboard objectives remove Scout_Cooldown

tellraw @a {"text":"Scouting Datapack uninstalled","color":"red"}
