tellraw @a ["pos: ",{entity:"@s",nbt:"Pos"}]
summon interaction ~ ~ ~ {height:0.25,width:1.0,Tags:["cushion.interact","cushion.init"]}
ride @n[type=interaction,tag=cushion.init,tag=cushion.interact,distance=..0.1] mount @s
execute on passengers run tag @s remove cushion.init
tag @s remove cushion.init

scoreboard players set @s cushion.timer 100

say maa

playsound minecraft:entity.cushion.place block @a ~ ~ ~