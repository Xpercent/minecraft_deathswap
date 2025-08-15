#trigger
function deathswap:trigger

#join
scoreboard players add @a deathswap.join 0
execute if score version deathswap.status matches 1.. as @a[scores={deathswap.join=0}] run function deathswap:join
scoreboard players reset * deathswap.join
scoreboard players set @a deathswap.join 1

#admin
execute as @a[tag=admin,tag=notadmin] run function deathswap:admin
execute as @a[tag=!notadmin,tag=!admin] run function deathswap:notadmin
tag @a[gamemode=creative] add admin
tag @a[gamemode=!creative,tag=!admin,tag=creative] remove creative

# game status
# -1 reset
#  0 prepare 準備
#  1 wait 等待
#  2 run 運行
#  3 win 結束
execute if score game deathswap.status matches -1 run gamemode survival @a
execute if score game deathswap.status matches 0 run function deathswap:prepare/prepare_time
execute if score game deathswap.status matches 1 run function deathswap:wait/wait_time
execute if score game deathswap.status matches 2 run function deathswap:play/play_time
execute if score game deathswap.status matches 3 run function deathswap:end/end_time
execute as @a if score @s deathswap.death matches 1 run scoreboard players reset @s deathswap.death

#win score
execute as @a unless score @s deathswap.win_score matches 1.. run scoreboard players set @s deathswap.win_score 0

#bossbar
execute if score language deathswap.setting matches 1.. run bossbar set deathswap:gmchange_time players @a
execute if score language deathswap.setting matches 1.. run bossbar set deathswap:wait players @a
execute if score language deathswap.setting matches 1.. run bossbar set deathswap:swap_time players @a[tag=spectator]
execute if score language deathswap.setting matches 1 run bossbar set deathswap:swap_time name [{"text": "§f[Spectator] Swap countdown: "},{"score":{"name": "swap","objective": "deathswap.timer"}},{"text": "s"}]
execute if score language deathswap.setting matches 2 run bossbar set deathswap:swap_time name [{"text": "§f[旁觀者顯示]傳送時間倒數："},{"score":{"name": "swap","objective": "deathswap.timer"}},{"text": "秒"}]

#win_display
execute if score language deathswap.setting matches 1 run scoreboard objectives modify deathswap.win_score displayname "§bWin Scores"
execute if score language deathswap.setting matches 2 run scoreboard objectives modify deathswap.win_score displayname "§b獲勝次數"
#取代挡视线的# scoreboard players set §dMade_By_vipvincent deathswap.win_score -99

#lobby
execute as @e[type=marker,tag=lobby] at @s run spawnpoint @a ~ ~ ~
execute as @e[type=marker,tag=lobby] at @s run setworldspawn ~ ~ ~
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{ui:1b}}}}]
kill @e[tag=setlobby]
execute at @e[tag=lobby] run particle end_rod ~ ~0.25 ~