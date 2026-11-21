#interaction

scoreboard players add @s cushion.timer 1
scoreboard players operation @s cushion.timer %= #100 cushion.tmp

tag @s add cushion.cur

function cushion:sit
function cushion:break

function cushion:tick/survive

tag @s remove cushion.cur