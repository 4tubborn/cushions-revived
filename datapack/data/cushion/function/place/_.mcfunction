execute unless score #allow cushion.timer matches 1 run return fail

execute if block ~ ~ ~ #minecraft:cushion_uses_collision_shape align xz positioned ~0.5 ~ ~0.5 run return run execute as @n[type=item_display,tag=cushion.cushion,tag=cushion.init] run function cushion:place/post/offset_no

execute unless score $raycast.hit_face bs.lambda matches 1 run return run function cushion:place/post/remove
execute if block ~ ~ ~ fire run return run function cushion:place/post/remove
execute align xz positioned ~0.5 ~ ~0.5 if entity @n[type=interaction,tag=cushion.interact,distance=..0.01] run return run function cushion:place/post/remove

scoreboard players set #allow cushion.timer 0

#execute store result storage cushion:marco pos.y double 0.001 run scoreboard players get $raycast.entry_point.y bs.lambda

#tellraw @a ["lam: ",{storage:"bs:lambda",nbt:"raycast.hit_point"}]

#execute store result score #hit cushion.timer run data get storage bs:lambda raycast.hit_point[1] 16

execute store result storage cushion:tmp pos.y double 0.0625 run data get storage bs:lambda raycast.hit_point[1] 16
#tellraw @a ["lam: ",{storage:"cushion:tmp",nbt:"pos"}]


#tp @p ~ ~ ~

execute as @n[type=item_display,tag=cushion.cushion,tag=cushion.init] align xz positioned ~0.5 ~ ~0.5 run function cushion:place/post/offset_macro with storage cushion:tmp pos