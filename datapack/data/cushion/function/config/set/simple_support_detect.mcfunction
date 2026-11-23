scoreboard players set #v cushion.tmp 1
scoreboard players operation #v cushion.tmp -= #simple_support_detect cushion.config
scoreboard players operation #simple_support_detect cushion.config = #v cushion.tmp

function cushion:config/panel