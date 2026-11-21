#execute if entity @n[type=lightning_bolt,distance=..0.5] run return run function cushion:break/_
execute if block ~ ~ ~ moving_piston run return run function cushion:break/_
execute if entity @n[type=#impact_projectiles,distance=..0.6] run return run function cushion:break/remove

execute unless score @s cushion.timer matches 0 run return fail

# fire and suffocating; if it crosses blocks, and current and upper blocks are suffocating or fire, following detection will miss.
execute if predicate cushion:suffocating run return run function cushion:break/_
execute if block ~ ~ ~ lava run return run function cushion:break/remove
#execute positioned ~ ~-0.015625 ~ unless function #bs.hitbox:is_in_block_shape run return run function cushion:break/_
execute if score #simple_support_detect cushion.config matches 0 unless function cushion:util/_ run return run function cushion:break/_
execute if score #simple_support_detect cushion.config matches 1 unless function cushion:util/simple run return run function cushion:break/_