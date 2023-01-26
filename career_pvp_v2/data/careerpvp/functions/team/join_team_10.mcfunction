execute store result score Team.10 member run team list 10
scoreboard players remove Team.10 member 2
tellraw @p[distance=..3,team=10] "你已经在这个队伍里了！"
execute if score Team.10 member matches 4.. run tellraw @p[distance=..3,team=!10] "该队伍已满！请选择其他队伍加入！"
execute if score Team.10 member matches ..3 run tellraw @p[distance=..3,team=] "您已经成功加入队伍 10"
execute if score Team.10 member matches ..3 run tellraw @p[distance=..3,team=!,team=!10] "您已经成功更换至队伍 10"
execute if score Team.10 member matches ..3 run execute as @p[distance=..3,team=!10] at @s run function careerpvp:team/leave_team
execute if score Team.10 member matches ..3 run team join 10 @p[distance=..3,team=]
execute store result score Team.10 member run team list 10
scoreboard players remove Team.10 member 2