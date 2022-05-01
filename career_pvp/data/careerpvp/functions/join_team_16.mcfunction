execute store result score Team.16 member run team list 16
scoreboard players remove Team.16 member 2
tellraw @p[distance=..3,team=16] "你已经在这个队伍里了！"
execute if score Team.16 member matches 5.. run tellraw @p[distance=..3,team=!16] "该队伍已满！请选择其他队伍加入！"
execute if score Team.16 member matches ..4 run tellraw @p[distance=..3,team=] "您已经成功加入队伍！"
execute if score Team.16 member matches ..4 run tellraw @p[distance=..3,team=!,team=!16] "您已经成功更换队伍！"
execute if score Team.16 member matches ..4 run execute as @p[distance=..3,team=!16] at @s run function careerpvp:leave_team
execute if score Team.16 member matches ..4 run team join 1 @p[distance=..3,team=]