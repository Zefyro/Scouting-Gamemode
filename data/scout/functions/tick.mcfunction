scoreboard players enable @a Scout
execute as @a unless score @s Scout_Cooldown matches 200.. run scoreboard players add @s Scout_Cooldown 1

execute as @a[scores={Scout=1..}] at @s run function scout:check


