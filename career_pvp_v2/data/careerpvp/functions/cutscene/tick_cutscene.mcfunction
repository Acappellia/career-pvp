gamemode spectator @a[gamemode=!creative]
effect give @a[gamemode=!creative] slowness 1 1 true
execute as @a[gamemode=!creative] run spectate @e[tag=cutscene,limit=1]

execute if score cutscene timer matches -1300 run tp @e[tag=cutscene] -13 18 160 -132.5 -8.3
execute if score cutscene timer matches -1280 run title @a[gamemode=!creative] times 10 40 10
execute if score cutscene timer matches -1280 run title @a[gamemode=!creative] subtitle {"text":"佩戴耳机以获得更好体验","color":"blue"}
execute if score cutscene timer matches -1280 run title @a[gamemode=!creative] title {"text":"d¯b","color":"light_purple"}

execute if score cutscene timer matches -1200 run title @a[gamemode=!creative] times 20 80 20
execute if score cutscene timer matches -1200 run title @a[gamemode=!creative] subtitle {"text":"呈  献","color":"white"}
execute if score cutscene timer matches -1200 run title @a[gamemode=!creative] title {"text":"NyaaCat Community","color":"red"}

execute if score cutscene timer matches -1080 run tp @e[tag=cutscene] 12 16 47 134.4 -30.7
execute if score cutscene timer matches -1080 run title @a[gamemode=!creative] times 20 80 20
execute if score cutscene timer matches -1080 run title @a[gamemode=!creative] subtitle {"text":"- Epic of Illusia -","color":"white"}
execute if score cutscene timer matches -1080 run title @a[gamemode=!creative] title {"text":"✡  幻  境  战  记  ✡","color":"blue"}

execute if score cutscene timer matches -960 run tp @e[tag=cutscene] -27 30 127 146.4 13.7
execute if score cutscene timer matches -960 run title @a[gamemode=!creative] times 20 50 20
execute if score cutscene timer matches -960 run title @a[gamemode=!creative] subtitle {"text":"Ran_nano","color":"yellow"}
execute if score cutscene timer matches -960 run title @a[gamemode=!creative] title {"text":"- 技术/插件 -","color":"gold"}
execute if score cutscene timer matches -890 run title @a[gamemode=!creative] times 0 50 20
execute if score cutscene timer matches -890 run title @a[gamemode=!creative] subtitle {"text":"langua","color":"yellow"}
execute if score cutscene timer matches -890 run title @a[gamemode=!creative] title {"text":"- 技术/插件 -","color":"gold"}

execute if score cutscene timer matches -820 run tp @e[tag=cutscene] 0 23 -65 178.9 -18.1
execute if score cutscene timer matches -820 run title @a[gamemode=!creative] times 20 80 20
execute if score cutscene timer matches -820 run title @a[gamemode=!creative] subtitle {"text":"ABraHam_Sid","color":"yellow"}
execute if score cutscene timer matches -820 run title @a[gamemode=!creative] title {"text":"- 地图规划/美术 -","color":"gold"}

execute if score cutscene timer matches -700 run tp @e[tag=cutscene] -183 8 59 -148.0 -19.1
execute if score cutscene timer matches -700 run title @a[gamemode=!creative] times 20 40 20
execute if score cutscene timer matches -700 run title @a[gamemode=!creative] subtitle {"text":"KengDie3","color":"yellow"}
execute if score cutscene timer matches -700 run title @a[gamemode=!creative] title {"text":"- 建筑 -","color":"gold"}
execute if score cutscene timer matches -640 run title @a[gamemode=!creative] times 0 40 20
execute if score cutscene timer matches -640 run title @a[gamemode=!creative] subtitle {"text":"bilser","color":"yellow"}
execute if score cutscene timer matches -640 run title @a[gamemode=!creative] title {"text":"- 建筑 -","color":"gold"}
execute if score cutscene timer matches -600 run title @a[gamemode=!creative] subtitle {"text":"sddg2333","color":"yellow"}
execute if score cutscene timer matches -600 run title @a[gamemode=!creative] title {"text":"- 建筑 -","color":"gold"}
execute if score cutscene timer matches -560 run title @a[gamemode=!creative] subtitle {"text":"reebing","color":"yellow"}
execute if score cutscene timer matches -560 run title @a[gamemode=!creative] title {"text":"- 建筑 -","color":"gold"}

execute if score cutscene timer matches -500 run tp @e[tag=cutscene] 84 27 -66 136.4 -27.2
execute if score cutscene timer matches -500 run title @a[gamemode=!creative] times 20 50 20
execute if score cutscene timer matches -500 run title @a[gamemode=!creative] subtitle {"text":"Asakura_kukii","color":"yellow"}
execute if score cutscene timer matches -500 run title @a[gamemode=!creative] title {"text":"- 测试 -","color":"gold"}
execute if score cutscene timer matches -430 run title @a[gamemode=!creative] times 0 50 20
execute if score cutscene timer matches -430 run title @a[gamemode=!creative] subtitle [{"text":"Aqua_lyy","color":"yellow"},{"text":" / ","color":"white"},{"text":"Aqua_bz","color":"yellow"}]
execute if score cutscene timer matches -430 run title @a[gamemode=!creative] title {"text":"- 测试 -","color":"gold"}

execute if score cutscene timer matches -360 run tp @e[tag=cutscene] -13 18 160 -132.5 -8.3
execute if score cutscene timer matches -360 run title @a[gamemode=!creative] times 20 80 20
execute if score cutscene timer matches -360 run title @a[gamemode=!creative] subtitle {"text":"ToastBrand","color":"yellow"}
execute if score cutscene timer matches -360 run title @a[gamemode=!creative] title {"text":"- 总策划 -","color":"gold"}

execute if score cutscene timer matches -240 run tp @e[tag=cutscene] 0 18 119 -180 0
execute if score cutscene timer matches -240..-2 as @e[tag=cutscene] at @s run tp @s ~ ~ ~-0.15
execute if score cutscene timer matches -240 run title @a[gamemode=!creative] times 20 40 20
execute if score cutscene timer matches -240 run title @a[gamemode=!creative] subtitle ""
execute if score cutscene timer matches -240 run title @a[gamemode=!creative] title {"text":"Ready...","color":"green"}
execute if score cutscene timer matches -240 run title @a[gamemode=!creative] times 0 41 0
execute if score cutscene timer matches -200 run title @a[gamemode=!creative] subtitle [{"text":"⚔","color":"red"},{"text":"  5  ","color":"white"},{"text":"⚔","color":"red"}]
execute if score cutscene timer matches -200 run title @a[gamemode=!creative] title {"text":"Ready...","color":"green"}
execute if score cutscene timer matches -160 run title @a[gamemode=!creative] subtitle [{"text":"✟","color":"yellow"},{"text":"  4  ","color":"white"},{"text":"✟","color":"yellow"}]
execute if score cutscene timer matches -160 run title @a[gamemode=!creative] title {"text":"Ready...","color":"green"}
execute if score cutscene timer matches -120 run title @a[gamemode=!creative] subtitle [{"text":"➷","color":"green"},{"text":"  3  ","color":"white"},{"text":"➷","color":"green"}]
execute if score cutscene timer matches -120 run title @a[gamemode=!creative] title {"text":"Ready...","color":"green"}
execute if score cutscene timer matches -80 run title @a[gamemode=!creative] subtitle [{"text":"۞","color":"blue"},{"text":"  2  ","color":"white"},{"text":"۞","color":"blue"}]
execute if score cutscene timer matches -80 run title @a[gamemode=!creative] title {"text":"Ready...","color":"green"}
execute if score cutscene timer matches -40 run title @a[gamemode=!creative] subtitle [{"text":"❈","color":"light_purple"},{"text":"  1  ","color":"white"},{"text":"❈","color":"light_purple"}]
execute if score cutscene timer matches -40 run title @a[gamemode=!creative] title {"text":"Ready...","color":"green"}

execute if score cutscene timer matches -1 run function careerpvp:cutscene/cutscene_end