advancement revoke @s only cushion:place

say place

scoreboard players set #allow cushion.timer 1

tag @s add cushion.place

execute anchored eyes run function #bs.raycast:run {with:{on_hit_point:"function cushion:place/_"}}
#execute anchored eyes run function #bs.raycast:run {with:{on_entry_point:"say 111"}}

tag @s remove cushion.place
