#interaction
playsound minecraft:entity.cushion.break neutral @a ~ ~ ~

execute on vehicle run function cushion:break/remove/particle
kill @s