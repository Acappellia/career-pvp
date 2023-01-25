execute as @s[tag=!dead] if score ingame int_val matches 1.. run scoreboard players add @s all_ultcharge 24
execute if score @s all_ultcharge matches 72000..100000 run advancement grant @s only careerpvp:ult_ok_archer
execute if score @s all_ultcharge matches 72000..100000 run scoreboard players set @s all_ultcharge 100000
function careerpvp:rpgitem/ultimatebar

#archer ult
execute as @s[scores={archer_ultcharge=1..}] unless entity @s[nbt={SelectedItem:{id:"minecraft:netherite_pickaxe"}}] run title @s subtitle ""
execute as @s[scores={archer_ultcharge=1..}] unless entity @s[nbt={SelectedItem:{id:"minecraft:netherite_pickaxe"}}] run scoreboard players set @s archer_ultcharge 0
execute as @s[scores={archer_ultcharge=1..,death_cd=..0}] run scoreboard players set @s archer_ultcharge 0
title @s[scores={archer_ultcharge=3,death_cd=20..}] subtitle [{"text":"--==\\\\     ","color":"gray"},{"text":"Λ  Λ  Λ","color":"green"},{"text":"     //==--","color":"gray"}]
title @s[scores={archer_ultcharge=2,death_cd=20..}] subtitle [{"text":"--==\\\\     ","color":"gray"},{"text":"Λ  Λ  ","color":"green"},{"text":"Λ     //==--","color":"gray"}]
title @s[scores={archer_ultcharge=1,death_cd=20..}] subtitle [{"text":"--==\\\\     ","color":"gray"},{"text":"Λ  ","color":"green"},{"text":"Λ  Λ     //==--","color":"gray"}]

#archer right effect
scoreboard players remove @s[scores={archer_rightcharge=..-1}] archer_rightcharge 1
title @s[scores={archer_rightcharge=..-1}] subtitle {"text":"︽","color":"green"}
title @s[scores={archer_rightcharge=0}] subtitle ""
scoreboard players set @s[scores={death_cd=..20}] archer_rightcharge 10

#archer jump
execute as @s[scores={archer_jumpcd=0..,playerpitch=70..}] run scoreboard players add @s archer_jumpcharge 1
execute as @s[scores={archer_jumpcd=0..,archer_jumpcharge=21..40}] run effect give @s minecraft:jump_boost 1 4 true
execute as @s[scores={archer_jumpcd=0..,archer_jumpcharge=41..60}] run effect give @s minecraft:jump_boost 1 9 true
execute as @s[scores={archer_jumpcd=0..,archer_jumpcharge=61..}] run effect give @s minecraft:jump_boost 1 14 true
execute as @s[scores={archer_jumpcd=0..,archer_jumpcharge=20..}] at @s run particle minecraft:cloud ~ ~ ~ 0 0 0 0.1 2
execute as @s[scores={archer_jumpcd=0..,playerpitch=..69}] run scoreboard players set @s archer_jumpcharge 0
execute as @s[scores={archer_jumpcd=0..,playerpitch=..69}] run effect clear @s minecraft:jump_boost
execute as @s[scores={archer_jumpcharge=21..,archer_jumps=1..}] run scoreboard players set @s archer_jumpcd -120
execute as @s[scores={archer_jumpcharge=21..,archer_jumps=1..}] run effect clear @s minecraft:jump_boost
execute as @s[scores={archer_jumpcharge=21..,archer_jumps=1..}] run scoreboard players set @s archer_jumpcharge 0
execute as @s[scores={archer_jumps=1..}] run scoreboard players set @s archer_jumps 0
execute if score ingame int_val matches 1.. run title @s[scores={archer_jumpcd=..-1}] title {"text":"-         -","color":"black"}
execute if score ingame int_val matches 1.. run title @s[scores={archer_jumpcd=0..,archer_jumpcharge=0}] title {"text":"-         -","color":"gray"}
execute if score ingame int_val matches 1.. run title @s[scores={archer_jumpcd=0..,archer_jumpcharge=1..20}] title {"text":"-         -","color":"dark_green"}
execute if score ingame int_val matches 1.. run title @s[scores={archer_jumpcd=0..,archer_jumpcharge=21..40}] title [{"text":"- ","color":"dark_green"},{"text":">       <","color":"green"},{"text":" -","color":"drak_green"}]
execute if score ingame int_val matches 1.. run title @s[scores={archer_jumpcd=0..,archer_jumpcharge=41..60}] title [{"text":"- ","color":"dark_green"},{"text":"> >     < <","color":"green"},{"text":" -","color":"dark_green"}]
execute if score ingame int_val matches 1.. run title @s[scores={archer_jumpcd=0..,archer_jumpcharge=61..}] title {"text":"> > >  ^  < < <","color":"green"}
