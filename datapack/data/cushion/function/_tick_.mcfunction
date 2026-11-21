#scoreboard players add #global cushion.timer 1

scoreboard players operation #t cushion.timer = #global cushion.timer
scoreboard players operation #t cushion.timer %= #100 cushion.tmp
#scoreboard players set #t cushion.timer 0

execute as @e[type=interaction,tag=cushion.interact] at @s run function cushion:tick/_