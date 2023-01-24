#witch ult
title @s[scores={death_cd=20..,witch_ultstack=1,career=9}] subtitle [{"text":"[ ◐○○○○ ]     ✡     [ ○○○○○ ]","color":"dark_gray"}]
title @s[scores={death_cd=20..,witch_ultstack=2,career=9}] subtitle [{"text":"[ ●○○○○ ]     ✡     [ ○○○○○ ]","color":"dark_gray"}]
title @s[scores={death_cd=20..,witch_ultstack=3,career=9}] subtitle [{"text":"[ ●◐○○○ ]     ✡     [ ○○○○○ ]","color":"dark_gray"}]
title @s[scores={death_cd=20..,witch_ultstack=4,career=9}] subtitle [{"text":"[ ●●○○○ ]     ✡     [ ○○○○○ ]","color":"dark_gray"}]
title @s[scores={death_cd=20..,witch_ultstack=5,career=9}] subtitle [{"text":"[ ●●◐○○ ]     ✡     [ ○○○○○ ]","color":"dark_gray"}]
title @s[scores={death_cd=20..,witch_ultstack=6,career=9}] subtitle [{"text":"[ ●●●○○ ]     ✡     [ ○○○○○ ]","color":"dark_gray"}]
title @s[scores={death_cd=20..,witch_ultstack=7,career=9}] subtitle [{"text":"[ ●●●◐○ ]     ✡     [ ○○○○○ ]","color":"dark_gray"}]
title @s[scores={death_cd=20..,witch_ultstack=8,career=9}] subtitle [{"text":"[ ●●●●○ ]     ✡     [ ○○○○○ ]","color":"dark_gray"}]
title @s[scores={death_cd=20..,witch_ultstack=9,career=9}] subtitle [{"text":"[ ●●●●◐ ]     ✡     [ ○○○○○ ]","color":"dark_gray"}]
title @s[scores={death_cd=20..,witch_ultstack=10,career=9}] subtitle [{"text":"[ ●●●●● ]     ✡     [ ○○○○○ ]","color":"dark_gray"}]
title @s[scores={death_cd=20..,witch_ultstack=11,career=9}] subtitle [{"text":"[ ●●●●● ]     ✡     [ ◐○○○○ ]","color":"dark_gray"}]
title @s[scores={death_cd=20..,witch_ultstack=12,career=9}] subtitle [{"text":"[ ●●●●● ]     ✡     [ ●○○○○ ]","color":"dark_gray"}]
title @s[scores={death_cd=20..,witch_ultstack=13,career=9}] subtitle [{"text":"[ ●●●●● ]     ✡     [ ●◐○○○ ]","color":"dark_gray"}]
title @s[scores={death_cd=20..,witch_ultstack=14,career=9}] subtitle [{"text":"[ ●●●●● ]     ✡     [ ●●○○○ ]","color":"dark_gray"}]
title @s[scores={death_cd=20..,witch_ultstack=15,career=9}] subtitle [{"text":"[ ●●●●● ]     ✡     [ ●●◐○○ ]","color":"dark_gray"}]
title @s[scores={death_cd=20..,witch_ultstack=16,career=9}] subtitle [{"text":"[ ●●●●● ]     ✡     [ ●●●○○ ]","color":"dark_gray"}]
title @s[scores={death_cd=20..,witch_ultstack=17,career=9}] subtitle [{"text":"[ ●●●●● ]     ✡     [ ●●●◐○ ]","color":"dark_gray"}]
title @s[scores={death_cd=20..,witch_ultstack=18,career=9}] subtitle [{"text":"[ ●●●●● ]     ✡     [ ●●●●○ ]","color":"dark_gray"}]
title @s[scores={death_cd=20..,witch_ultstack=19,career=9}] subtitle [{"text":"[ ●●●●● ]     ✡     [ ●●●●◐ ]","color":"dark_gray"}]
title @s[scores={death_cd=20..,witch_ultstack=20..,career=9}] subtitle [{"text":"[☼☼☼☼☼]","color":"dark_gray"},{"text":"      ✡      ","color":"dark_red"},{"text":"[☼☼☼☼☼]","color":"dark_gray"}]
title @s[scores={death_cd=20..,witch_ultstack=1..,career=9}] title ""
execute as @s[scores={witch_ultcharge=..-1,witch_kill=1..}] at @s run playsound minecraft:entity.wither.death master @a ~ ~ ~ 1 1.5
execute as @s[scores={witch_ultcharge=..-1,witch_kill=1..}] at @s run effect give @s minecraft:regeneration 6 3 
execute as @s[scores={witch_ultcharge=..-1,witch_kill=1..}] at @s run particle minecraft:dust 160 0 0 3 ^ ^ ^2 0.5 3 0.5 0 200
execute as @s[scores={witch_ultcharge=..-1,witch_kill=1..}] at @s run particle minecraft:lava ^ ^ ^2 0.5 3 0.5 1 200
execute as @s[scores={witch_ultcharge=..-1,witch_kill=1..}] at @s run effect give @a[distance=..8] minecraft:slowness 1 3
scoreboard players reset @s witch_kill

#witch right
execute as @s[tag=witch_right] at @s run execute as @a[distance=..8,tag=!witch_right] if score @s team = @p team store result score @s witch_health run data get entity @s Health 1000
execute as @s[tag=witch_right] at @s run execute as @a[distance=..8,tag=!witch_right] if score @s team = @p team unless score @s witch_rstack matches 1.. run effect give @s minecraft:health_boost 20 0 true
execute as @s[tag=witch_right] at @s run execute as @a[distance=..8,tag=!witch_right] if score @s team = @p team if score @s witch_rstack matches 1 run effect give @s minecraft:health_boost 20 1 true
execute as @s[tag=witch_right] at @s run execute as @a[distance=..8,tag=!witch_right] if score @s team = @p team if score @s witch_rstack matches 2.. run effect give @s minecraft:health_boost 20 2 true
execute as @s[tag=witch_right] at @s run execute as @a[distance=..8,tag=!witch_right] if score @s team = @p team store result score @s witch_health run scoreboard players operation @s +alt_health = @s witch_health
execute as @s[tag=witch_right] at @s run execute as @a[distance=..8,tag=!witch_right] if score @s team = @p team run scoreboard players add @s witch_rstack 1
execute as @s[tag=witch_right] at @s run execute as @a[distance=..8,tag=!witch_right] if score @s team = @p team run scoreboard players set @s witch_rtime -400
execute as @s[tag=witch_right] at @s run execute as @a[distance=..8,tag=!witch_right] if score @s team = @p team run effect give @s minecraft:regeneration 1 3 true
tag @s remove witch_right

#witch hit
execute as @s[tag=witch_hit] at @s run execute as @a[distance=..8] if score @s team = @p team run effect give @s minecraft:regeneration 3 1 true
tag @s remove witch_hit
