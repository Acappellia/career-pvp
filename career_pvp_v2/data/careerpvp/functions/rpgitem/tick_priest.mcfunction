execute as @s[tag=!dead] if score ingame int_val matches 1.. run scoreboard players add @s all_ultcharge 20
execute if score @s all_ultcharge matches 72000..100000 run advancement grant @s only careerpvp:ult_ok_priest
execute if score @s all_ultcharge matches 72000..100000 run tellraw @s [{"text": ">>","color": "white","bold": false},{"text":"\n\"in principio creavit Deus caelum et terram.\"","color":"yellow","bold": true},{"text": "\n[终极技能已就绪]","color": "gray","bold": true},{"text": "\n>>","color": "white","bold": false}]
execute if score @s all_ultcharge matches 72000..100000 run scoreboard players set @s all_ultcharge 100000
function careerpvp:rpgitem/ultimatebar

#priest sneak
execute as @s[scores={priest_sneak=-1}] at @s run execute as @a[distance=..8] if score @s team = @p team run effect give @s minecraft:instant_health 1 1
execute as @s[scores={priest_sneak=-1}] at @s run playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 1 1.5
execute as @s[scores={priest_sneak=-1}] at @s run particle minecraft:flash ~ ~1.4 ~ 0 0 0 0 1
execute as @s[scores={priest_sneak=-1}] at @s run particle minecraft:wax_on ~ ~1 ~ 4 1 4 0 100

#priest ult
execute as @s[scores={priest_ult=..0,playerpitch=10..}] run scoreboard players set @s +alt_vector_y -30
execute as @s[scores={priest_ult=..0,playerpitch=..-10}] run scoreboard players set @s +alt_vector_y 30
execute as @s[scores={priest_ult=..0}] run scoreboard players set @s +alt_vector_face 30

title @s[scores={death_cd=20..,priest_ult=-200..-181}] subtitle [{"text":"☨════╬════☨     ✺     ☨════╬════☨","color":"yellow"}]
title @s[scores={death_cd=20..,priest_ult=-180..-161}] subtitle [{"text":"☨════╬═══","color":"yellow"},{"text":"═","color":"gray"},{"text":"☨     ✺     ☨","color":"yellow"},{"text":"═","color":"gray"},{"text":"═══╬════☨","color":"yellow"}]
title @s[scores={death_cd=20..,priest_ult=-160..-141}] subtitle [{"text":"☨════╬══","color":"yellow"},{"text":"══","color":"gray"},{"text":"☨     ✹     ☨","color":"yellow"},{"text":"══","color":"gray"},{"text":"══╬════☨","color":"yellow"}]
title @s[scores={death_cd=20..,priest_ult=-140..-121}] subtitle [{"text":"☨════╬═","color":"yellow"},{"text":"═══","color":"gray"},{"text":"☨     ✹     ☨","color":"yellow"},{"text":"═══","color":"gray"},{"text":"═╬════☨","color":"yellow"}]
title @s[scores={death_cd=20..,priest_ult=-120..-101}] subtitle [{"text":"☨════╬","color":"yellow"},{"text":"════","color":"gray"},{"text":"☨     ✸     ☨","color":"yellow"},{"text":"════","color":"gray"},{"text":"╬════☨","color":"yellow"}]
title @s[scores={death_cd=20..,priest_ult=-100..-81}] subtitle [{"text":"☨════","color":"yellow"},{"text":"╬════","color":"gray"},{"text":"☨     ✸     ☨","color":"yellow"},{"text":"════╬","color":"gray"},{"text":"════☨","color":"yellow"}]
title @s[scores={death_cd=20..,priest_ult=-80..-61}] subtitle [{"text":"☨═══","color":"yellow"},{"text":"═╬════","color":"gray"},{"text":"☨     ✴     ☨","color":"yellow"},{"text":"════╬═","color":"gray"},{"text":"═══☨","color":"yellow"}]
title @s[scores={death_cd=20..,priest_ult=-60..-41}] subtitle [{"text":"☨══","color":"yellow"},{"text":"══╬════","color":"gray"},{"text":"☨     ✴     ☨","color":"yellow"},{"text":"════╬══","color":"gray"},{"text":"══☨","color":"yellow"}]
title @s[scores={death_cd=20..,priest_ult=-40..-21}] subtitle [{"text":"☨═","color":"yellow"},{"text":"═══╬════","color":"gray"},{"text":"☨     ✶     ☨","color":"yellow"},{"text":"════╬═══","color":"gray"},{"text":"═☨","color":"yellow"}]
title @s[scores={death_cd=20..,priest_ult=-20..-1}] subtitle [{"text":"☨","color":"yellow"},{"text":"════╬════","color":"gray"},{"text":"☨     ✶     ☨","color":"yellow"},{"text":"════╬════","color":"gray"},{"text":"☨","color":"yellow"}]
title @s[scores={death_cd=20..,priest_ult=0}] subtitle [{"text":"☨════╬════☨     ✶     ☨════╬════☨","color":"dark_gray"}]
title @s[scores={death_cd=20..,priest_ult=..0}] title ""
execute as @s[scores={priest_ult=..-1}] run scoreboard players operation @s priest_ultdiv = @s priest_ult
execute as @s[scores={priest_ult=..-1}] run scoreboard players operation @s priest_ultdiv %= priest_int int_val
execute as @s[scores={priest_ult=..-1,priest_ultdiv=0}] at @s run execute as @a[distance=..8] if score @s team = @p team run effect give @s minecraft:regeneration 1 4

