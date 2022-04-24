teleport @a[gamemode=!creative] @e[type=armor_stand,tag=spawn]

scoreboard objectives remove spec
scoreboard objectives add spec dummy

gamemode adventure @a[gamemode=!creative]

replaceitem entity @a armor.head air