execute as @s[tag=!dead] if score ingame int_val matches 1.. run scoreboard players add @s all_ultcharge 24
execute if score @s all_ultcharge matches 72000..100000 run advancement grant @s only careerpvp:ult_ok_alchemist
execute if score @s all_ultcharge matches 72000..100000 run tellraw @s [{"text": ">>","color": "white","bold": false},{"text":"\n呃......下个试验对象在哪呢？","color":"yellow","bold": true},{"text": "\n[终极技能已就绪]","color": "gray","bold": true},{"text": "\n>>","color": "white","bold": false}]
execute if score @s all_ultcharge matches 72000..100000 run scoreboard players set @s all_ultcharge 100000
function careerpvp:rpgitem/ultimatebar

#alchemist ult
title @s[scores={death_cd=20..,alchemist_ult=-160..-141}] subtitle [{"text":"00000000","color":"green","obfuscated":true},{"text":" >        < ","color":"dark_green","obfuscated":false},{"text":"00000000","color":"green","obfuscated":true}]
title @s[scores={death_cd=20..,alchemist_ult=-140..-121}] subtitle [{"text":"0","color":"gray"},{"text":"0000000","color":"green","obfuscated":true},{"text":" >        < ","color":"dark_green","obfuscated":false},{"text":"0000000","color":"green","obfuscated":true},{"text":"0","color":"gray","obfuscated":false}]
title @s[scores={death_cd=20..,alchemist_ult=-120..-101}] subtitle [{"text":"00","color":"gray"},{"text":"000000","color":"green","obfuscated":true},{"text":" >        < ","color":"dark_green","obfuscated":false},{"text":"000000","color":"green","obfuscated":true},{"text":"00","color":"gray","obfuscated":false}]
title @s[scores={death_cd=20..,alchemist_ult=-100..-81}] subtitle [{"text":"000","color":"gray"},{"text":"00000","color":"green","obfuscated":true},{"text":" >        < ","color":"dark_green","obfuscated":false},{"text":"00000","color":"green","obfuscated":true},{"text":"000","color":"gray","obfuscated":false}]
title @s[scores={death_cd=20..,alchemist_ult=-80..-61}] subtitle [{"text":"0000","color":"gray"},{"text":"0000","color":"green","obfuscated":true},{"text":" >        < ","color":"dark_green","obfuscated":false},{"text":"0000","color":"green","obfuscated":true},{"text":"0000","color":"gray","obfuscated":false}]
title @s[scores={death_cd=20..,alchemist_ult=-60..-41}] subtitle [{"text":"00000","color":"gray"},{"text":"000","color":"green","obfuscated":true},{"text":" >        < ","color":"dark_green","obfuscated":false},{"text":"000","color":"green","obfuscated":true},{"text":"00000","color":"gray","obfuscated":false}]
title @s[scores={death_cd=20..,alchemist_ult=-40..-21}] subtitle [{"text":"000000","color":"gray"},{"text":"00","color":"green","obfuscated":true},{"text":" >        < ","color":"dark_green","obfuscated":false},{"text":"00","color":"green","obfuscated":true},{"text":"000000","color":"gray","obfuscated":false}]
title @s[scores={death_cd=20..,alchemist_ult=-20..-1}] subtitle [{"text":"0000000","color":"gray"},{"text":"0","color":"green","obfuscated":true},{"text":" >        < ","color":"dark_green","obfuscated":false},{"text":"0","color":"green","obfuscated":true},{"text":"0000000","color":"gray","obfuscated":false}]
title @s[scores={death_cd=20..,alchemist_ult=0}] subtitle [{"text":"00000000","color":"gray"},{"text":" >        < ","color":"gray","obfuscated":false},{"text":"00000000","color":"gray","obfuscated":false}]
title @s[scores={death_cd=20..,alchemist_ult=..0}] title ""

#alchemist sneak
execute as @s[tag=alchemist_sneak] at @s run execute as @a[distance=..3] if score @s team = @p team run effect give @s minecraft:instant_health 1 0 true
execute as @s[tag=alchemist_sneak] at @s run execute as @a[distance=..3] unless score @s team = @p team run effect give @s minecraft:poison 5 0 true
tag @s remove alchemist_sneak