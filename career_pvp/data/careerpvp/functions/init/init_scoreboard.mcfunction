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