#exe postion: at interaction
execute as @p[tag=cushion.click,distance=..100] run function cushion:sit/player
#tag @s add cushion.sit

playsound minecraft:entity.cushion.sit neutral @a ~ ~ ~

data remove entity @s interaction.player