execute store result score #py cushion.tmp run data get entity @s Pos[1] 64
scoreboard players operation #py cushion.tmp %= #64 cushion.tmp

#tellraw @a ["py: ",{score:{name:"#py",objective:"cushion.tmp"}}]
execute if score #py cushion.tmp matches 0 run return run execute unless block ~ ~-1 ~ #cushion:no_support
return run execute unless block ~ ~ ~ #cushion:no_support