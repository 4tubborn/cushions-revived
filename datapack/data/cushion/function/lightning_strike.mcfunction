advancement revoke @s only cushion:lightning_strike

say 1

execute as @e[type=interaction,tag=cushion.interact,distance=..256] at @s if entity @n[type=lightning_bolt,distance=..0.6] run function cushion:break/_