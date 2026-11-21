ride @s dismount
ride @s mount @n[type=interaction,tag=cushion.interact,tag=cushion.cur,distance=..0.01]
advancement revoke @s only cushion:get_up
tag @s add cushion.sit
tag @s remove cushion.click