execute as @s[tag=!dead] if score ingame int_val matches 1.. run scoreboard players add @s all_ultcharge 20
execute if score @s all_ultcharge matches 72000..100000 run advancement grant @s only careerpvp:ult_ok_defender
execute if score @s all_ultcharge matches 72000..100000 run tellraw @s [{"text": ">>","color": "white","bold": false},{"text":"\n此刻你充满了守护的决心。","color":"yellow","bold": true},{"text": "\n[终极技能已就绪]","color": "gray","bold": true},{"text": "\n>>","color": "white","bold": false}]
execute if score @s all_ultcharge matches 72000..100000 run scoreboard players set @s all_ultcharge 100001
function careerpvp:rpgitem/ultimatebar

#defender sneak:
execute as @s[scores={defender_sneak=..-1}] run execute as @a[distance=..6] if score @s team = @p team run effect give @s minecraft:resistance 1 0 false
title @s[scores={death_cd=20..,defender_sneak=18}] subtitle {"text":" ♖         ♖ ","color":"dark_gray"}
title @s[scores={death_cd=20..,defender_sneak=17}] subtitle [{"text":"- ","color":"dark_gray"},{"text":"♖         ♖","color":"gray"},{"text":" -","color":"dark_gray"}]
title @s[scores={death_cd=20..,defender_sneak=16}] subtitle [{"text":"- ","color":"dark_gray"},{"text":"- ","color":"gray"},{"text":"♖         ♖","color":"white"},{"text":" -","color":"gray"},{"text":" -","color":"dark_gray"}]
title @s[scores={death_cd=20..,defender_sneak=14}] subtitle [{"text":"- ","color":"dark_gray"},{"text":"- ","color":"gray"},{"text":"- ♖         ♖ -","color":"white"},{"text":" -","color":"gray"},{"text":" -","color":"dark_gray"}]
title @s[scores={death_cd=20..,defender_sneak=12}] subtitle [{"text":"- ","color":"dark_gray"},{"text":"- ","color":"gray"},{"text":"- - ♖         ♖ - -","color":"white"},{"text":" -","color":"gray"},{"text":" -","color":"dark_gray"}]
title @s[scores={death_cd=20..,defender_sneak=9}] subtitle [{"text":"- ","color":"dark_gray"},{"text":"- ","color":"gray"},{"text":"- - - ♖         ♖ - - -","color":"white"},{"text":" -","color":"gray"},{"text":" -","color":"dark_gray"}]
title @s[scores={death_cd=20..,defender_sneak=6}] subtitle [{"text":"- ","color":"dark_gray"},{"text":"- ","color":"gray"},{"text":"- - - - ♖         ♖ - - - -","color":"white"},{"text":" -","color":"gray"},{"text":" -","color":"dark_gray"}]
title @s[scores={death_cd=20..,defender_sneak=..0}] subtitle [{"text":"|| ","color":"gold"},{"text":"- - - - - - - ","color":"yellow"},{"text":"♜         ♜","color":"gold"},{"text":" - - - - - - -","color":"yellow"},{"text":" ||","color":"gold"}]
title @s[scores={death_cd=20..,defender_sneak=..20}] title ""
scoreboard players set @s[scores={death_cd=20..,defender_sneak=..0}] eff_r6 -2
effect give @s[scores={defender_sneak=..0}] minecraft:resistance 1 1 true

