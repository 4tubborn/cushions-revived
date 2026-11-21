function cushion:util/size
execute positioned ~ ~-0.015625 ~ if function cushion:util/default run return 1
scoreboard players remove #y bs.ctx 10000000
scoreboard players remove #j bs.ctx 10000000

tellraw @a [{text:"AABB: "},{text:"min=("},{score:{name:"#x",objective:"bs.ctx"}},{text:", "},{score:{name:"#y",objective:"bs.ctx"}},{text:", "},{score:{name:"#z",objective:"bs.ctx"}},{text:") max=("},{score:{name:"#i",objective:"bs.ctx"}},{text:", "},{score:{name:"#j",objective:"bs.ctx"}},{text:", "},{score:{name:"#k",objective:"bs.ctx"}},{text:")"}]
return run function cushion:util/default

#execute at @s run function bs.hitbox:utils/get_entity_size
#function cushion:util/size

#tellraw @a [{text:"AABB: "},{text:"min=("},{score:{name:"#x",objective:"bs.ctx"}},{text:", "},{score:{name:"#y",objective:"bs.ctx"}},{text:", "},{score:{name:"#z",objective:"bs.ctx"}},{text:") max=("},{score:{name:"#i",objective:"bs.ctx"}},{text:", "},{score:{name:"#j",objective:"bs.ctx"}},{text:", "},{score:{name:"#k",objective:"bs.ctx"}},{text:")"}]

#execute store result storage bs:ctx x double .0000001 run scoreboard players operation #l bs.ctx = #x bs.ctx
#execute store result storage bs:ctx y double .0000001 run scoreboard players operation #m bs.ctx = #y bs.ctx
#execute store result storage bs:ctx z double .0000001 run scoreboard players operation #n bs.ctx = #z bs.ctx

#data modify storage bs:ctx _ set value {shape:"#bs.hitbox:get_block_shape",ignored:"#bs.hitbox:intangible"}
#return run function bs.hitbox:is_entity_in_blocks/recurse/init with storage bs:ctx