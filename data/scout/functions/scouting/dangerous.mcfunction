


scoreboard players reset @s Scout
#> Underwater
execute if score @s Scout_Air matches ..299 run tellraw @s {"text":"Couldn't trigger Scout mode underwater.","color":"red"}
#> In Air
execute if score @s Scout_NotSafe matches 1 run tellraw @s {"text":"Couldn't trigger Scout mode in air.","color":"red"}
#> In Air
execute if score @s Scout_NotSafe matches 2 run tellraw @s {"text":"Couldn't trigger Scout mode in lava.","color":"red"}