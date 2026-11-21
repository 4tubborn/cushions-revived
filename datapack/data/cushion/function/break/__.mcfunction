#item replace entity @n[type=item_display,tag=cushion.util] contents from entity @s contents
# player breaks in survival or adventure || cannot survive at the current position
execute unless entity @p[tag=cushion.click,distance=..100,gamemode=creative] run loot spawn ~ ~ ~ loot cushion:_dispatch
function cushion:break/particle with entity @s item.components."minecraft:custom_data"

#tellraw @a ["sss: ",{entity:"@s",nbt:"item.components.\"minecraft:custom_data\".\"cushion/color\""}]
kill @s
