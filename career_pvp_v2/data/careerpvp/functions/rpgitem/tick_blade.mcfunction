#blade ult
scoreboard players set @s[scores={blade_ult=-30}] +alt_vector_face 900
scoreboard players set @s[scores={blade_ult=-30}] +alt_vector_y 600
scoreboard players set @s[scores={blade_ult=-20..-15}] +alt_vector_y -40000
execute as @s[scores={blade_ult=-14}] at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 1
execute as @s[scores={blade_ult=-14}] at @s run particle minecraft:explosion ~ ~ ~ 0 0 0 0 1
execute as @s[scores={blade_ult=-14}] at @s run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:120,DurationOnUse:0f,Age:0,Tags:["blade_ultcenter"]}
execute as @s[scores={blade_ult=-14}] at @s run scoreboard players operation @e[tag=blade_ultcenter,sort=nearest,limit=1] setteam = @s team
execute as @s[scores={blade_ult=-14}] at @s run scoreboard players set @e[tag=blade_ultcenter,sort=nearest,limit=1] eff_r6 -120
execute as @s[scores={blade_ult=-14}] at @s run playsound minecraft:item.elytra.flying master @a ~ ~ ~ 1 1.6

#blade qte
effect give @s[tag=blade_qte] minecraft:speed 1 2 true
execute as @s[tag=blade_qte] at @s run particle minecraft:cloud ~ ~ ~ 0 0 0 0.05 3
execute as @s[tag=blade_qte] at @s run playsound minecraft:item.armor.equip_elytra master @a ~ ~ ~ 1 1
tag @s remove blade_qte

#blade swap
scoreboard players set @s[scores={blade_swap=160..}] blade_swap -80
execute if score ingame int_val matches 1.. run title @s[scores={death_cd=20..,career=10,blade_swap=..99}] subtitle {"text":"[    ☥    ]","color":"dark_gray"}
execute if score ingame int_val matches 1.. run title @s[scores={death_cd=20..,career=10,blade_swap=100..109}] subtitle {"text":"[    ☥    ]","color":"gray"}
execute if score ingame int_val matches 1.. run title @s[scores={death_cd=20..,career=10,blade_swap=109..119}] subtitle {"text":"-[    ☥    ]-","color":"gray"}
execute if score ingame int_val matches 1.. run title @s[scores={death_cd=20..,career=10,blade_swap=120..159}] subtitle [{"text":"-[    ","color":"gray"},{"text":"☥","color":"gold"},{"text":"    ]-","color":"gray"}]
execute if score ingame int_val matches 1.. run title @s[scores={death_cd=20..,career=10}] title ""
