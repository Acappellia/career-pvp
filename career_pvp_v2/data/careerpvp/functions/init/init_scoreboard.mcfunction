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
scoreboard objectives add mobkill dummy "怪物击杀数"
scoreboard objectives remove mobkill_iron
scoreboard objectives add mobkill_iron minecraft.killed:iron_golem
scoreboard objectives remove mobkill_a
scoreboard objectives add mobkill_a minecraft.killed:zombie_villager
scoreboard objectives remove mobkill_b
scoreboard objectives add mobkill_b minecraft.killed:zombie
scoreboard objectives remove mobkill_c
scoreboard objectives add mobkill_c minecraft.killed:fox

scoreboard objectives remove mobkilled
scoreboard objectives add mobkilled dummy "被怪物击杀次数"
scoreboard objectives remove mobkilled_int
scoreboard objectives add mobkilled_int dummy "被怪物击杀次数"
scoreboard objectives remove killed_by_iron
scoreboard objectives add killed_by_iron minecraft.killed_by:iron_golem
scoreboard objectives remove killed_by_aa
scoreboard objectives add killed_by_a minecraft.killed_by:zombie_villager
scoreboard objectives remove killed_by_b
scoreboard objectives add killed_by_b minecraft.killed_by:zombie
scoreboard objectives remove killed_by_c
scoreboard objectives add killed_by_c minecraft.killed_by:fox

scoreboard objectives remove int_val
scoreboard objectives add int_val dummy
scoreboard objectives remove timer
scoreboard objectives add timer dummy
scoreboard players set revive_time int_val -601
scoreboard players set start_delay int_val -201
scoreboard players set match_time int_val 54001
scoreboard players set mob_interval int_val 600
scoreboard players set mob_interval timer 0 

scoreboard objectives remove mana
scoreboard objectives add mana dummy
scoreboard objectives remove sneak_timer
scoreboard objectives add sneak_timer minecraft.custom:time_since_death
scoreboard objectives remove right_timer
scoreboard objectives add right_timer minecraft.custom:time_since_death
scoreboard objectives remove left_timer
scoreboard objectives add left_timer minecraft.custom:time_since_death
scoreboard objectives remove jumppad_timer
scoreboard objectives add jumppad_timer minecraft.custom:time_since_death
scoreboard objectives remove death_timer
scoreboard objectives add death_timer minecraft.custom:time_since_death

bossbar add match_timer "本局游戏剩余时间"
bossbar set match_timer color blue
bossbar set match_timer style notched_10