execute as @s[tag=!dead] if score ingame int_val matches 1.. run scoreboard players add @s all_ultcharge 24
execute if score @s all_ultcharge matches 72000..100000 run advancement grant @s only careerpvp:ult_ok_berserker
execute if score @s all_ultcharge matches 72000..100000 run tellraw @s [{"text": ">>","color": "white","bold": false},{"text":"\n你对战斗的渴望达到了极致。","color":"yellow","bold": true},{"text": "\n[终极技能已就绪]","color": "gray","bold": true},{"text": "\n>>","color": "white","bold": false}]
execute if score @s all_ultcharge matches 72000..100000 run scoreboard players set @s all_ultcharge 100000
function careerpvp:rpgitem/ultimatebar

#berserker sneak:
title @s[scores={death_cd=20..,berserker_sneak=-199}] subtitle [{"text":"《","color":"gray"},{"text":" ( ▶          ◀ ) ","color":"gold"},{"text":"》","color":"gray"}]
title @s[scores={death_cd=20..,berserker_sneak=-198}] subtitle [{"text":"《《","color":"gray"},{"text":" ( ▶          ◀ ) ","color":"gold"},{"text":"》》","color":"gray"}]
title @s[scores={death_cd=20..,berserker_sneak=-197}] subtitle [{"text":"《《《","color":"gray"},{"text":" ( ▶          ◀ ) ","color":"gold"},{"text":"》》》","color":"gray"}]
title @s[scores={death_cd=20..,berserker_sneak=-196}] subtitle [{"text":"《《《《","color":"gray"},{"text":" ( ▶          ◀ ) ","color":"gold"},{"text":"》》》》","color":"gray"}]
title @s[scores={death_cd=20..,berserker_sneak=-195}] subtitle [{"text":"《《《《《","color":"gray"},{"text":" ( ▶          ◀ ) ","color":"gold"},{"text":"》》》》》","color":"gray"}]
title @s[scores={death_cd=20..,berserker_sneak=-194}] subtitle [{"text":"《《《《《《","color":"gray"},{"text":" ( ▶          ◀ ) ","color":"gold"},{"text":"》》》》》》","color":"gray"}]
title @s[scores={death_cd=20..,berserker_sneak=-193}] subtitle [{"text":"《《《《《《《","color":"gray"},{"text":" ( ▶          ◀ ) ","color":"gold"},{"text":"》》》》》》》","color":"gray"}]
title @s[scores={death_cd=20..,berserker_sneak=-192}] subtitle [{"text":"《《《《《《《《","color":"gray"},{"text":" ( ▶          ◀ ) ","color":"gold"},{"text":"》》》》》》》》","color":"gray"}]
title @s[scores={death_cd=20..,berserker_sneak=-191}] subtitle [{"text":"《《《《《《《《《","color":"gray"},{"text":" ( ▶          ◀ ) ","color":"gold"},{"text":"》》》》》》》》》","color":"gray"}]
title @s[scores={death_cd=20..,berserker_sneak=-190}] subtitle [{"text":"《《《《《《《《《《","color":"gray"},{"text":" ( ▶          ◀ ) ","color":"gold"},{"text":"》》》》》》》》》》","color":"gray"}]
title @s[scores={death_cd=20..,berserker_sneak=-189..-180}] subtitle [{"text":"《《《《《《《《《《","color":"red"},{"text":" ( ▶          ◀ ) ","color":"dark_red"},{"text":"》》》》》》》》》》","color":"red"}]
title @s[scores={death_cd=20..,berserker_sneak=-179..-160}] subtitle [{"text":"《《《《《《《《《","color":"red"},{"text":" ( ▶          ◀ ) ","color":"dark_red"},{"text":"》》》》》》》》》","color":"red"}]
title @s[scores={death_cd=20..,berserker_sneak=-159..-140}] subtitle [{"text":"《《《《《《《《","color":"red"},{"text":" ( ▶          ◀ ) ","color":"dark_red"},{"text":"》》》》》》》》","color":"red"}]
title @s[scores={death_cd=20..,berserker_sneak=-139..-120}] subtitle [{"text":"《《《《《《《","color":"red"},{"text":" ( ▶          ◀ ) ","color":"dark_red"},{"text":"》》》》》》》","color":"red"}]
title @s[scores={death_cd=20..,berserker_sneak=-119..-100}] subtitle [{"text":"《《《《《《","color":"red"},{"text":" ( ▶          ◀ ) ","color":"dark_red"},{"text":"》》》》》》","color":"red"}]
title @s[scores={death_cd=20..,berserker_sneak=-99..-80}] subtitle [{"text":"《《《《《","color":"red"},{"text":" ( ▶          ◀ ) ","color":"dark_red"},{"text":"》》》》》","color":"red"}]
title @s[scores={death_cd=20..,berserker_sneak=-79..-60}] subtitle [{"text":"《《《《","color":"red"},{"text":" ( ▶          ◀ ) ","color":"dark_red"},{"text":"》》》》","color":"red"}]
title @s[scores={death_cd=20..,berserker_sneak=-59..-40}] subtitle [{"text":"《《《","color":"red"},{"text":" ( ▶          ◀ ) ","color":"dark_red"},{"text":"》》》","color":"red"}]
title @s[scores={death_cd=20..,berserker_sneak=-39..-20}] subtitle [{"text":"《《","color":"red"},{"text":" ( ▶          ◀ ) ","color":"dark_red"},{"text":"》》","color":"red"}]
title @s[scores={death_cd=20..,berserker_sneak=-19..-1}] subtitle [{"text":"《","color":"red"},{"text":" ( ▶          ◀ ) ","color":"dark_red"},{"text":"》","color":"red"}]
title @s[scores={death_cd=20..,berserker_sneak=0}] subtitle [{"text":" ( ▶          ◀ ) ","color":"white"}]
title @s[scores={death_cd=20..,berserker_sneak=..0}] title ""