execute as @s[tag=!dead] if score ingame int_val matches 1.. run scoreboard players add @s all_ultcharge 15
execute if score @s all_ultcharge matches 72000..100000 run advancement grant @s only careerpvp:ult_ok_sorcerer
execute if score @s all_ultcharge matches 72000..100000 run tellraw @s [{"text": ">>","color": "white","bold": false},{"text":"\n纯净玛娜在你的指尖迸出紫色的火花。","color":"yellow","bold": true},{"text": "\n[终极技能已就绪]","color": "gray","bold": true},{"text": "\n>>","color": "white","bold": false}]
execute if score @s all_ultcharge matches 72000..100000 run scoreboard players set @s all_ultcharge 100000
function careerpvp:rpgitem/ultimatebar

#sorcerer_ult
title @s[scores={death_cd=20..,sorcerer_ult=-60}] subtitle [{"text":"> ","color":"dark_gray"},{"text":"","color":"dark_purple","bold":true},{"text":"ᚾ  ","color":"dark_gray","bold":true,"obfuscated":true}]
title @s[scores={death_cd=20..,sorcerer_ult=-55}] subtitle [{"text":"> ","color":"dark_gray"},{"text":"ᚾ ","color":"dark_purple","bold":true},{"text":"ᚨ  ","color":"dark_gray","bold":true,"obfuscated":true}]
title @s[scores={death_cd=20..,sorcerer_ult=-49}] subtitle [{"text":"> ","color":"dark_gray"},{"text":"ᚾ ᚨ ","color":"dark_purple","bold":true},{"text":"ᚦ  ","color":"dark_gray","bold":true,"obfuscated":true}]
title @s[scores={death_cd=20..,sorcerer_ult=-43}] subtitle [{"text":"> ","color":"dark_gray"},{"text":"ᚾ ᚨ ᚦ ","color":"dark_purple","bold":true},{"text":"ᚷ  ","color":"dark_gray","bold":true,"obfuscated":true}]
title @s[scores={death_cd=20..,sorcerer_ult=-37}] subtitle [{"text":"> ","color":"dark_gray"},{"text":"ᚾ ᚨ ᚦ ᚷ ","color":"dark_purple","bold":true},{"text":"ᛟ  ","color":"dark_gray","bold":true,"obfuscated":true}]
title @s[scores={death_cd=20..,sorcerer_ult=-31}] subtitle [{"text":"> ","color":"dark_gray"},{"text":"ᚾ ᚨ ᚦ ᚷ ᛟ ","color":"dark_purple","bold":true},{"text":"ᛊ  ","color":"dark_gray","bold":true,"obfuscated":true}]
title @s[scores={death_cd=20..,sorcerer_ult=-25}] subtitle [{"text":"> ","color":"dark_gray"},{"text":"ᚾ ᚨ ᚦ ᚷ ᛟ ᛊ ","color":"dark_purple","bold":true},{"text":"ᚺ  ","color":"dark_gray","bold":true,"obfuscated":true}]
title @s[scores={death_cd=20..,sorcerer_ult=-19}] subtitle [{"text":"> ","color":"dark_gray"},{"text":"ᚾ ᚨ ᚦ ᚷ ᛟ ᛊ ᚺ  ","color":"dark_purple","bold":true},{"text":"","color":"dark_gray","bold":true,"obfuscated":true}]
title @s[scores={death_cd=20..,sorcerer_ult=-1}] subtitle [{"text":"> ","color":"red"},{"text":"ᚾ ᚨ ᚦ ᚷ ᛟ ᛊ ᚺ  ","color":"dark_red","bold":true},{"text":"","color":"dark_gray","bold":true,"obfuscated":true}]
title @s[scores={death_cd=20..,sorcerer_ult=..0}] title ""
