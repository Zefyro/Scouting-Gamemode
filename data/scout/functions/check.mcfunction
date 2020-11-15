
scoreboard players reset @s Scout_Safe

#> Not dangerous
execute unless entity @s[gamemode=spectator] unless block ~ ~-1 ~ air run scoreboard players reset @s Scout_NotSafe
execute unless entity @s[gamemode=spectator] unless block ~ ~-1 ~ lava run scoreboard players reset @s Scout_NotSafe
execute unless entity @s[gamemode=spectator] unless block ~ ~ ~ lava run scoreboard players reset @s Scout_NotSafe
execute unless entity @s[gamemode=spectator] unless block ~ ~1 ~ lava run scoreboard players reset @s Scout_NotSafe
execute unless entity @s[gamemode=spectator] unless block ~ ~2 ~ lava run scoreboard players reset @s Scout_NotSafe
#> Dangerous
execute unless entity @s[gamemode=spectator] if block ~ ~-1 ~ air run scoreboard players set @s Scout_NotSafe 1
execute unless entity @s[gamemode=spectator] if block ~ ~-1 ~ lava run scoreboard players set @s Scout_NotSafe 2
execute unless entity @s[gamemode=spectator] if block ~ ~ ~ lava run scoreboard players set @s Scout_NotSafe 2
execute unless entity @s[gamemode=spectator] if block ~ ~1 ~ lava run scoreboard players set @s Scout_NotSafe 2
execute unless entity @s[gamemode=spectator] if block ~ ~2 ~ lava run scoreboard players set @s Scout_NotSafe 2
execute if entity @e[type=#scout:hostile,distance=..10] run scoreboard players set @s Scout_NotSafe 3
#> Failed messages
execute as @a[scores={Scout=1..,Scout_Cooldown=..199}] run function scout:scouting/cooldown
execute as @a[scores={Scout=1..,Scout_Air=..299}] run function scout:scouting/dangerous
execute as @a[scores={Scout=1..,Scout_NotSafe=1..}] run function scout:scouting/dangerous
#> Safe
execute unless score @s Scout_NotSafe matches 0.. unless score @s Scout_Air matches ..299 run scoreboard players set @s Scout_Safe 1

#> Allowed to scout
execute as @a[scores={Scout=1..},gamemode=spectator] at @s run function scout:scouting/stop
execute as @a[scores={Scout=1..,Scout_Cooldown=200..,Scout_Safe=1},gamemode=!spectator] at @s run function scout:scouting/start
