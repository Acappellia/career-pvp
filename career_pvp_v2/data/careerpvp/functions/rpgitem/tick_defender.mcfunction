#defender sneak:
execute as @s[scores={defender_sneak=..-1}] run execute as @a[distance=..10] if score @s team = @p team run effect give @s minecraft:resistance 1 0 false
title @s[scores={death_cd=20..,defender_sneak=18}] subtitle {"text":" ♖         ♖ ","color":"dark_gray"}
title @s[scores={death_cd=20..,defender_sneak=17}] subtitle [{"text":"- ","color":"dark_gray"},{"text":"♖         ♖","color":"gray"},{"text":" -","color":"dark_gray"}]
title @s[scores={death_cd=20..,defender_sneak=16}] subtitle [{"text":"- ","color":"dark_gray"},{"text":"- ","color":"gray"},{"text":"♖         ♖","color":"white"},{"text":" -","color":"gray"},{"text":" -","color":"dark_gray"}]
title @s[scores={death_cd=20..,defender_sneak=14}] subtitle [{"text":"- ","color":"dark_gray"},{"text":"- ","color":"gray"},{"text":"- ♖         ♖ -","color":"white"},{"text":" -","color":"gray"},{"text":" -","color":"dark_gray"}]
title @s[scores={death_cd=20..,defender_sneak=12}] subtitle [{"text":"- ","color":"dark_gray"},{"text":"- ","color":"gray"},{"text":"- - ♖         ♖ - -","color":"white"},{"text":" -","color":"gray"},{"text":" -","color":"dark_gray"}]
title @s[scores={death_cd=20..,defender_sneak=9}] subtitle [{"text":"- ","color":"dark_gray"},{"text":"- ","color":"gray"},{"text":"- - - ♖         ♖ - - -","color":"white"},{"text":" -","color":"gray"},{"text":" -","color":"dark_gray"}]
title @s[scores={death_cd=20..,defender_sneak=6}] subtitle [{"text":"- ","color":"dark_gray"},{"text":"- ","color":"gray"},{"text":"- - - - ♖         ♖ - - - -","color":"white"},{"text":" -","color":"gray"},{"text":" -","color":"dark_gray"}]
title @s[scores={death_cd=20..,defender_sneak=..0}] subtitle [{"text":"|| ","color":"gold"},{"text":"- - - - - - - ","color":"yellow"},{"text":"♜         ♜","color":"gold"},{"text":" - - - - - - -","color":"yellow"},{"text":" ||","color":"gold"}]
title @s[scores={death_cd=20..,defender_sneak=..20}] title ""
scoreboard players set @s[scores={death_cd=20..,defender_sneak=..0}] eff_r10 -2
effect give @s[scores={defender_sneak=..0}] minecraft:resistance 1 1 true

