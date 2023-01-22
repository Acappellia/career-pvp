execute at @e[type=armor_stand, tag=spawn, tag=ingame] run tag @a[team=,distance=..10,gamemode=!creative] add new_spec
execute at @e[type=armor_stand, tag=spawn, tag=ingame] run tag @a[team=!,distance=..10,gamemode=!creative] add revive_or_rejoin

scoreboard players set @a[tag=new_spec] spec 1
bossbar set match_timer players @a[tag=new_spec]
tp @a[tag=new_spec] @r[tag=!dead,team=!]
title @a[tag=new_spec] times 0 10 5
title @a[tag=new_spec] subtitle ""
title @a[tag=new_spec] title ""
tp @a[tag=revive_or_rejoin] @e[type=armor_stand,tag=respawn,limit=1]
#TOTEST
#bossbar set match_timer players @a[tag=revive_or_join]
title @a[tag=revive_or_rejoin] times 0 10 5
title @a[tag=revive_or_rejoin] subtitle ""
title @a[tag=revive_or_rejoin] title ""

tag @a remove new_spec
tag @a remove revive_or_rejoin

execute at @e[type=armor_stand, tag=spawn, tag=ingame] run tag @a[distance=..10] remove death_career_select