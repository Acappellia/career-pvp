execute at @e[type=armor_stand, tag=spawn, tag=ingame] run tag @a[team=,distance=..10,gamemode=!creative] add login_spec
execute at @e[type=armor_stand, tag=spawn, tag=ingame] run tag @a[team=!,distance=..10,gamemode=!creative] add revive_or_rejoin

scoreboard players set @a[tag=login_spec] spec 1
tp @a[tag=login_spec] @r[tag=!dead,team=!]
title @a[tag=login_spec] times 0 10 5
title @a[tag=login_spec] subtitle ""
title @a[tag=login_spec] title ""
tp @a[tag=revive_or_rejoin] @e[type=armor_stand,tag=respawn,limit=1]
title @a[tag=revive_or_rejoin] times 0 10 5
title @a[tag=revive_or_rejoin] subtitle ""
title @a[tag=revive_or_rejoin] title ""

tag @a remove login_spec
tag @a remove revive_or_rejoin

execute at @e[type=armor_stand, tag=spawn, tag=ingame] run tag @a[distance=..10] remove death_career_select