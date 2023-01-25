execute as @s[tag=!dead] if score ingame int_val matches 1.. run scoreboard players add @s all_ultcharge 24
execute if score @s all_ultcharge matches 72000..100000 run advancement grant @s only careerpvp:ult_ok_assassin
execute if score @s all_ultcharge matches 72000..100000 run scoreboard players set @s all_ultcharge 100000
function careerpvp:rpgitem/ultimatebar

#assassin hide effect
title @s[scores={death_cd=20..,assassin_hide=..-140}] subtitle [{"text":"‖ ‖ ‖ Λ ‖ ‖ ‖ ","color":"gray"},{"text":"<        >","color":"dark_gray"},{"text":" ‖ ‖ ‖ Λ ‖ ‖ ‖","color":"gray"}]
title @s[scores={death_cd=20..,assassin_hide=-139..-120}] subtitle [{"text":"‖ ‖ ‖ Λ ‖ ‖ ","color":"gray"},{"text":"‖ ","color":"dark_gray"},{"text":"<        >","color":"dark_gray"},{"text":" ‖","color":"dark_gray"},{"text":" ‖ ‖ Λ ‖ ‖ ‖","color":"gray"}]
title @s[scores={death_cd=20..,assassin_hide=-119..-100}] subtitle [{"text":"‖ ‖ ‖ Λ ‖ ","color":"gray"},{"text":"‖ ‖ ","color":"dark_gray"},{"text":"<        >","color":"dark_gray"},{"text":" ‖ ‖","color":"dark_gray"},{"text":" ‖ Λ ‖ ‖ ‖","color":"gray"}]
title @s[scores={death_cd=20..,assassin_hide=-99..-80}] subtitle [{"text":"‖ ‖ ‖ Λ ","color":"gray"},{"text":"‖ ‖ ‖ ","color":"dark_gray"},{"text":"<        >","color":"dark_gray"},{"text":" ‖ ‖ ‖","color":"dark_gray"},{"text":" Λ ‖ ‖ ‖","color":"gray"}]
title @s[scores={death_cd=20..,assassin_hide=-79..-60}] subtitle [{"text":"‖ ‖ ‖ ","color":"gray"},{"text":"Λ ‖ ‖ ‖ ","color":"dark_gray"},{"text":"<        >","color":"dark_gray"},{"text":" ‖ ‖ ‖ Λ","color":"dark_gray"},{"text":" ‖ ‖ ‖","color":"gray"}]
title @s[scores={death_cd=20..,assassin_hide=-59..-40}] subtitle [{"text":"‖ ‖ ","color":"gray"},{"text":"‖ Λ ‖ ‖ ‖ ","color":"dark_gray"},{"text":"<        >","color":"dark_gray"},{"text":" ‖ ‖ ‖ Λ ‖","color":"dark_gray"},{"text":" ‖ ‖","color":"gray"}]
title @s[scores={death_cd=20..,assassin_hide=-39..-20}] subtitle [{"text":"‖ ","color":"gray"},{"text":"‖ ‖ Λ ‖ ‖ ‖ ","color":"dark_gray"},{"text":"<        >","color":"dark_gray"},{"text":" ‖ ‖ ‖ Λ ‖ ‖","color":"dark_gray"},{"text":" ‖","color":"gray"}]
title @s[scores={death_cd=20..,assassin_hide=-19..-1}] subtitle [{"text":"‖ ‖ ‖ Λ ‖ ‖ ‖ ","color":"dark_gray"},{"text":"<        >","color":"dark_gray"},{"text":" ‖ ‖ ‖ Λ ‖ ‖ ‖","color":"dark_gray"}]
title @s[scores={death_cd=20..,assassin_hide=0}] subtitle [{"text":"‖ ‖ ‖ ","color":"black"},{"text":"Λ","color":"dark_red"},{"text":" ‖ ‖ ‖ <        > ‖ ‖ ‖ ","color":"black"},{"text":"Λ","color":"dark_red"},{"text":" ‖ ‖ ‖","color":"black"}]
title @s[scores={death_cd=20..,assassin_hide=..0}] title ""

#assassin ult eff
execute as @s[tag=assassin_ulteff] at @s run execute as @a[distance=..10] unless score @s team = @p team run effect give @s minecraft:blindness 4 0 true 
execute as @s[tag=assassin_ulteff] at @s run playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 2 1.5
execute as @s[tag=assassin_ulteff] run effect give @s minecraft:glowing 8 0 true
execute as @s[tag=assassin_ulteff] at @s run particle minecraft:squid_ink ~ ~ ~ 0.7 1 0.7 0 100
execute as @s[tag=assassin_ulteff] at @s run particle minecraft:soul ~ ~ ~ 1 1.3 1 0 100
tag @s remove assassin_ulteff

#assassin hide
execute as @s[scores={assassin_hide=-1}] at @s run particle minecraft:squid_ink ~ ~0.5 ~ 0.5 0.5 0.5 0.12 30
execute as @s[scores={assassin_hide=-1}] at @s run playsound minecraft:particle.soul_escape master @a ~ ~ ~ 5 1
scoreboard players set @s[scores={assassin_sneakhit=0}] assassin_hide -2
