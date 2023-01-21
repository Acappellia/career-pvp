scoreboard objectives remove kill
scoreboard objectives add kill playerKillCount "击杀最多敌人"
scoreboard objectives remove kill_inter
scoreboard objectives add kill_inter playerKillCount
scoreboard objectives remove kill_life
scoreboard objectives add kill_life playerKillCount
scoreboard objectives remove kill_life_max
scoreboard objectives add kill_life_max dummy "一命击败最多敌人"
scoreboard objectives remove kill_successive
scoreboard objectives add kill_successive playerKillCount
scoreboard objectives remove kill_suc_max
scoreboard objectives add kill_suc_max dummy "最高连杀"
scoreboard objectives remove kill_timer
scoreboard objectives add kill_timer dummy
scoreboard objectives remove death
scoreboard objectives add death deathCount "死亡数"
scoreboard objectives remove death_inter
scoreboard objectives add death_inter deathCount
scoreboard objectives remove death_cd
scoreboard objectives add death_cd dummy
scoreboard objectives remove score
scoreboard objectives add score dummy "团队分数"
scoreboard objectives setdisplay sidebar score
scoreboard objectives remove spec
scoreboard objectives add spec dummy 
scoreboard objectives remove give_item
scoreboard objectives add give_item dummy

scoreboard objectives remove killed_by_t1
scoreboard objectives remove killed_by_t2
scoreboard objectives remove killed_by_t3
scoreboard objectives remove killed_by_t4
scoreboard objectives remove killed_by_t5
scoreboard objectives remove killed_by_t6
scoreboard objectives remove killed_by_t7
scoreboard objectives remove killed_by_t8
scoreboard objectives remove killed_by_t9
scoreboard objectives remove killed_by_t10
scoreboard objectives remove killed_by_t11
scoreboard objectives remove killed_by_t12
scoreboard objectives remove killed_by_t13
scoreboard objectives remove killed_by_t14
scoreboard objectives remove killed_by_t15
scoreboard objectives remove killed_by_t16
scoreboard objectives add killed_by_t1 killedByTeam.aqua
scoreboard objectives add killed_by_t2 killedByTeam.gold
scoreboard objectives add killed_by_t3 killedByTeam.green
scoreboard objectives add killed_by_t4 killedByTeam.red
scoreboard objectives add killed_by_t5 killedByTeam.light_purple
scoreboard objectives add killed_by_t6 killedByTeam.yellow
scoreboard objectives add killed_by_t7 killedByTeam.white
scoreboard objectives add killed_by_t8 killedByTeam.blue
scoreboard objectives add killed_by_t9 killedByTeam.dark_aqua
scoreboard objectives add killed_by_t10 killedByTeam.dark_green
scoreboard objectives add killed_by_t11 killedByTeam.gray
scoreboard objectives add killed_by_t12 killedByTeam.dark_purple
scoreboard objectives add killed_by_t13 killedByTeam.dark_blue
scoreboard objectives add killed_by_t14 killedByTeam.dark_red
scoreboard objectives add killed_by_t15 killedByTeam.dark_gray
scoreboard objectives add killed_by_t16 killedByTeam.black

scoreboard objectives remove mobkill
scoreboard objectives add mobkill minecraft.killed:chicken "只因击杀数"
scoreboard objectives remove mobkill_inter
scoreboard objectives add mobkill_inter minecraft.killed:chicken