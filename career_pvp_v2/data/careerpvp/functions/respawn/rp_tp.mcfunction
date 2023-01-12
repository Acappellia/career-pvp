tag @a remove rp_tpdone
tag @e[type=armor_stand,tag=rp_point] remove rp_selected
tag @e[type=armor_stand,tag=rp_point,sort=random,limit=1] add rp_selected
execute as @s at @s run function careerpvp:respawn/rp_tploop