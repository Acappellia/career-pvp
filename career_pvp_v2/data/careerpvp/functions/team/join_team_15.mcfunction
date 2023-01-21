execute store result score Team.15 member run team list 15
scoreboard players remove Team.15 member 2
tellraw @p[distance=..3,team=15] "你已经在这个队伍里了！"
execute if score Team.15 member matches 5.. run tellraw @p[distance=..3,team=!15] "该队伍已满！请选择其他队伍加入！"
execute if score Team.15 member matches ..4 run tellraw @p[distance=..3,team=] "您已经成功加入队伍 15"
execute if score Team.15 member matches ..4 run tellraw @p[distance=..3,team=!,team=!15] "您已经成功更换至队伍 15"
execute if score Team.15 member matches ..4 run execute as @p[distance=..3,team=!15] at @s run function careerpvp:team/leave_team
execute if score Team.15 member matches ..4 run team join 15 @p[distance=..3,team=]
execute store result score Team.15 member run team list 15
scoreboard players remove Team.15 member 2