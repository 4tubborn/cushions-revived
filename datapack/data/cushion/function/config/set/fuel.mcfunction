scoreboard players set #v cushion.tmp 1
scoreboard players operation #v cushion.tmp -= #fuel cushion.config
scoreboard players operation #fuel cushion.config = #v cushion.tmp

function cushion:config/panel