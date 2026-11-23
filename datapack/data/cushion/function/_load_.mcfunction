#summon item_display ~ ~ ~ {Tags:["cushion.util"],transformation:{left_rotation:[0,0,0,1],scale:[0,0,0],translation:[0,0,0],right_rotation:[0,0,0,1]}}
scoreboard objectives add cushion.timer dummy
scoreboard objectives add cushion.tmp dummy
scoreboard objectives add cushion.config dummy
scoreboard players set #global cushion.timer 0
scoreboard players set #100 cushion.tmp 100
scoreboard players set #64 cushion.tmp 64

execute unless score #simple_support_detect cushion.config matches 0..1 run scoreboard players set #simple_support_detect cushion.config 0
#0001c595-0000-0000-0000-001900000001
#summon item_display ~ ~ ~ {Tags:["cushion.item"],UUID:[I;116117,0,25,1],transformation:{scale:[0,0,0],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],translation:[0,0,0]}}
#forceload add 0 0
execute unless score #fuel cushion.config matches 0..1 run scoreboard players set #fuel cushion.config 1