advancement revoke @s only container_detect:close
advancement revoke @s only container_detect:close_empty

#say open

#item replace entity 0001c595-0000-0000-0000-001900000001 contents from entity @s armor.head

#item replace entity @s armor.head with egg[item_model=air,item_name="",custom_data={cushion:"container_probe"}]

function #container_detect:on_open

execute if items entity @s armor.head * run return run item modify entity @s armor.head container_detect:open
item replace entity @s armor.head with recovery_compass[custom_data={cushion:"container_placeholder"},item_model=air,item_name=""]