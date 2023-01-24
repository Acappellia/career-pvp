#sword ult
execute as @s[scores={sword_ult=..0}] unless entity @s[nbt={SelectedItem:{id:"minecraft:netherite_pickaxe"}}] run scoreboard players set @s sword_ult 1
execute as @s[scores={sword_ult=..0,death_cd=..0}] run scoreboard players set @s sword_ult 1
title @s[scores={sword_ult=-160..-141,death_cd=20..}] subtitle {"text":"-]|=)===>    ♗    <===(=|[-","color":"dark_gray"}
title @s[scores={sword_ult=-140..-121,death_cd=20..}] subtitle [{"text":"-]|","color":"gold"},{"text":"=)===>    ♗    <===(=","color":"dark_gray"},{"text":"|[-","color":"gold"}]
title @s[scores={sword_ult=-120..-101,death_cd=20..}] subtitle [{"text":"-]|=)","color":"gold"},{"text":"===>    ♗    <===","color":"dark_gray"},{"text":"(=|[-","color":"gold"}]
title @s[scores={sword_ult=-100..-81,death_cd=20..}] subtitle [{"text":"-]|=)=","color":"gold"},{"text":"==>    ♗    <==","color":"dark_gray"},{"text":"=(=|[-","color":"gold"}]
title @s[scores={sword_ult=-80..-61,death_cd=20..}] subtitle [{"text":"-]|=)==","color":"gold"},{"text":"=>    ♗    <=","color":"dark_gray"},{"text":"==(=|[-","color":"gold"}]
title @s[scores={sword_ult=-60..-41,death_cd=20..}] subtitle [{"text":"-]|=)===>","color":"gold"},{"text":"    ♗    ","color":"dark_gray"},{"text":"<===(=|[-","color":"gold"}]
title @s[scores={sword_ult=-40..-21,death_cd=20..}] subtitle {"text":"-]|=)===>    ♗    <===(=|[-","color":"red"}
title @s[scores={sword_ult=-20..-1,death_cd=20..}] subtitle {"text":"-]|=)===>    ♝    <===(=|[-","color":"red"}
title @s[scores={sword_ult=0,death_cd=20..}] subtitle {"text":"-]|=)===>    ♝    <===(=|[-","color":"dark_gray"}
title @s[scores={sword_ult=..0,death_cd=20..}] title ""

#sword right charge
execute if data entity @s SelectedItem.tag.ChargedProjectiles[0].id run scoreboard players set @s sword_charge -5
execute if data entity @s SelectedItem.tag.ChargedProjectiles[0].id run title @s subtitle [{"text":"| ","color":"gray"},{"text":"♝","color":"gold"},{"text":" |","color":"gray"}]
execute if data entity @s SelectedItem.tag.ChargedProjectiles[0].id run title @s title ""

#sword ult sneak
scoreboard players set @s[scores={sword_ultsneak=-9}] +alt_vector_y -40000

#sword shift
scoreboard players set @s[scores={sword_sneak=-10..-2}] +alt_vector_face 600
scoreboard players set @s[scores={sword_sneak=-1}] +alt_vector_bypct 1
scoreboard players set @s[scores={sword_sneak=-10..-1}] +alt_vector_y -1000
scoreboard players set @s[scores={sword_sneak=..-10}] +alt_vector_bypct 1
