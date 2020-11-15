
scoreboard players reset @s Scout

summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["Scouting"],Invisible:1b,Invulnerable:1b,Marker:1b}

spectate @e[type=armor_stand,tag=Scouting,limit=1,sort=nearest] @s[tag=Scouting]

execute as @e[type=armor_stand,tag=Scouting] at @s store result entity @s Pos[0] double 1 run scoreboard players get @p[tag=Scouting] Scout_x
execute as @e[type=armor_stand,tag=Scouting] at @s store result entity @s Pos[1] double 1 run scoreboard players get @p[tag=Scouting] Scout_y
execute as @e[type=armor_stand,tag=Scouting] at @s store result entity @s Pos[2] double 1 run scoreboard players get @p[tag=Scouting] Scout_z

execute as @e[type=armor_stand,tag=Scouting,limit=1,sort=nearest] at @s positioned ~0.5 ~ ~0.5 run tp @p[tag=Scouting] ~ ~ ~

kill @e[type=armor_stand,tag=Scouting,limit=1,sort=nearest]

execute if score @s Scout_Gamemode matches 1 run gamemode survival @s
execute if score @s Scout_Gamemode matches 2 run gamemode creative @s
execute if score @s Scout_Gamemode matches 3 run gamemode adventure @s

execute if score @s Scout_ForceLoad matches 1 run forceload remove ~ ~

scoreboard players reset @s Scout_Cooldown
scoreboard players reset @s Scout_Forceload
scoreboard players reset @s Scout_Dimension
scoreboard players reset @s Scout_Gamemode
scoreboard players reset @s Scout_x
scoreboard players reset @s Scout_y
scoreboard players reset @s Scout_z
tag @s remove Scouting
scoreboard players reset @s Scouting
