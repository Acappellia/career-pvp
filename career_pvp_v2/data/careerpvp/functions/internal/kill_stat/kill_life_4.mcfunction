scoreboard players set @s kill_score 2
scoreboard players operation @s kill_score *= @s kill_inter
execute as @s run function careerpvp:internal/kill_stat/kill_addscore
item replace entity @s armor.feet with chainmail_boots{display:{Name:'{"text":"嗜血诅咒"}'},HideFlags:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:-4,Operation:0,UUID:[I;1887330007,1902264476,-1228101230,-1161993134],Slot:"feet"}]} 1