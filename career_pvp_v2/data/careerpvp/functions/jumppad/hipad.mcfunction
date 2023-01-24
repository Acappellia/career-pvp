scoreboard players set @s +alt_vector_face 500
scoreboard players set @s +alt_vector_y 2000
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 0.5 0.5
particle minecraft:cloud ~ ~0.1 ~ 0 0 0 0.1 20
scoreboard players set @s jumppad_cd -100
effect give @s minecraft:hero_of_the_village 5 0 true