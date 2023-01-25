execute as @s[tag=!dead] if score ingame int_val matches 1.. run scoreboard players add @s all_ultcharge 24
execute if score @s all_ultcharge matches 72000..100000 run advancement grant @s only careerpvp:ult_ok_blade
execute if score @s all_ultcharge matches 72000..100000 run tellraw @s [{"text": ">>","color": "white","bold": false},{"text":"\n沙暴将至......","color":"yellow","bold": true},{"text": "\n[终极技能已就绪]","color": "gray","bold": true},{"text": "\n>>","color": "white","bold": false}]
execute if score @s all_ultcharge matches 72000..100000 run scoreboard players set @s all_ultcharge 100000
function careerpvp:rpgitem/ultimatebar

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
