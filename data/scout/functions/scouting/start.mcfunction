
#> Forceload chunk
execute store success score @s Scout_ForceLoad run forceload add ~ ~

#> Store gamemode
execute if entity @s[gamemode=spectator] run scoreboard players set @s Scout_Gamemode 0
execute if entity @s[gamemode=survival] run scoreboard players set @s Scout_Gamemode 1
execute if entity @s[gamemode=creative] run scoreboard players set @s Scout_Gamemode 2
execute if entity @s[gamemode=adventure] run scoreboard players set @s Scout_Gamemode 3

#> Store dimension
execute if entity @s[nbt={Dimension:"minecraft:overworld"}] run scoreboard players set @s Scout_Dimension 0
execute if entity @s[nbt={Dimension:"minecraft:the_end"}] run scoreboard players set @s Scout_Dimension 1
execute if entity @s[nbt={Dimension:"minecraft:the_nether"}] run scoreboard players set @s Scout_Dimension -1

#> Reset Scout
scoreboard players reset @s Scout

#> Store Position
execute unless score @s Scout_Gamemode matches 0 run execute store result score @s Scout_x run data get entity @s Pos[0]
execute unless score @s Scout_Gamemode matches 0 run execute store result score @s Scout_y run data get entity @s Pos[1]
execute unless score @s Scout_Gamemode matches 0 run execute store result score @s Scout_z run data get entity @s Pos[2]

#> Change gamemode
execute unless score @s Scout_Gamemode matches 0 run gamemode spectator @s

#> Tag
tag @s add Scouting

#> Failed
execute if score @s Scout_Gamemode matches 0 run tellraw @s {"text":"You are already in spectator mode","color": "red"}

scoreboard players set @s Scouting 1

scoreboard players reset @s Scout_NotSafe
