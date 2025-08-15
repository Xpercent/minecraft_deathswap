#bossbar
execute store result bossbar deathswap:swap_time max run scoreboard players get swap_time deathswap.timer
execute store result bossbar deathswap:swap_time value run scoreboard players get swap_countdown deathswap.timer
execute if score play_time deathswap.timer matches 3 run bossbar set deathswap:wait visible false

#count
scoreboard players set red_count deathswap.count 0
scoreboard players set blue_count deathswap.count 0
scoreboard players set yellow_count deathswap.count 0
scoreboard players set green_count deathswap.count 0
execute as @a[team=red,tag=player] run scoreboard players add red_count deathswap.count 1
execute as @a[team=blue,tag=player] run scoreboard players add blue_count deathswap.count 1
execute as @a[team=yellow,tag=player] run scoreboard players add yellow_count deathswap.count 1
execute as @a[team=green,tag=player] run scoreboard players add green_count deathswap.count 1

scoreboard players set player_count deathswap.count 0
execute as @a[tag=player] run scoreboard players add player_count deathswap.count 1

scoreboard players set died_count deathswap.count 0
execute as @a[tag=died] run scoreboard players add died_count deathswap.count 1

#timer
function deathswap:play/timer
execute if score swap_countdown deathswap.timer matches 0 run function deathswap:play/swap/main

#gamemode
gamemode spectator @a[tag=!player]
execute if score gmchange deathswap.setting matches 0 run gamemode survival @a[tag=player]

#gmchange
execute if score gmchange deathswap.setting matches 1 run function deathswap:play/gmchange/main

#actionbar
function deathswap:play/actionbar

#died
execute as @a[tag=player] if score @s deathswap.death matches 1 run function deathswap:play/died

# #hurt_tip
# execute as @a[tag=player] if score @s deathswap.hurt > @s deathswap.health run function deathswap:play/hurt_tip
# execute as @a run scoreboard players operation @s deathswap.hurt = @s deathswap.health

#免燒
execute if score furnace deathswap.setting matches 1 run function deathswap:play/furnace

#設定效果
execute if score saturation deathswap.setting matches 1 run effect give @a[tag=player] saturation 1 255 true
execute if score night_vision deathswap.setting matches 1 run effect give @a[tag=player] night_vision 11 255 true

#傳送警告
execute if score warn deathswap.setting matches 10 if score swap_countdown deathswap.timer matches 10 if score tick deathswap.timer matches 0 if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§fSwap in ten seconds!"}]
execute if score warn deathswap.setting matches 10 if score swap_countdown deathswap.timer matches 10 if score tick deathswap.timer matches 0 if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": "§f十秒後交換！"}]
execute if score warn deathswap.setting matches 10 if score swap_countdown deathswap.timer matches 10 if score tick deathswap.timer matches 0 run execute as @a at @s run playsound block.anvil.land master @s ~ ~ ~

execute if score warn deathswap.setting matches 5 if score swap_countdown deathswap.timer matches 5 if score tick deathswap.timer matches 0 if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§fSwap in five seconds!"}]
execute if score warn deathswap.setting matches 5 if score swap_countdown deathswap.timer matches 5 if score tick deathswap.timer matches 0 if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": "§f五秒後交換！"}]
execute if score warn deathswap.setting matches 5 if score swap_countdown deathswap.timer matches 5 if score tick deathswap.timer matches 0 run execute as @a at @s run playsound block.anvil.land master @s ~ ~ ~

#倒計時顯示 (10秒倒數)
execute if score swap_countdown deathswap.timer matches 10 if score tick deathswap.timer matches 0 run title @a title {"text": "§410"}
execute if score swap_countdown deathswap.timer matches 10 if score tick deathswap.timer matches 0 run execute as @a at @s run playsound block.lever.click master @s ~ ~ ~

execute if score swap_countdown deathswap.timer matches 9 if score tick deathswap.timer matches 0 run title @a title {"text": "§69"}
execute if score swap_countdown deathswap.timer matches 9 if score tick deathswap.timer matches 0 run execute as @a at @s run playsound block.lever.click master @s ~ ~ ~

execute if score swap_countdown deathswap.timer matches 8 if score tick deathswap.timer matches 0 run title @a title {"text": "§e8"}
execute if score swap_countdown deathswap.timer matches 8 if score tick deathswap.timer matches 0 run execute as @a at @s run playsound block.lever.click master @s ~ ~ ~

execute if score swap_countdown deathswap.timer matches 7 if score tick deathswap.timer matches 0 run title @a title {"text": "§27"}
execute if score swap_countdown deathswap.timer matches 7 if score tick deathswap.timer matches 0 run execute as @a at @s run playsound block.lever.click master @s ~ ~ ~

execute if score swap_countdown deathswap.timer matches 6 if score tick deathswap.timer matches 0 run title @a title {"text": "§96"}
execute if score swap_countdown deathswap.timer matches 6 if score tick deathswap.timer matches 0 run execute as @a at @s run playsound block.lever.click master @s ~ ~ ~

execute if score swap_countdown deathswap.timer matches 5 if score tick deathswap.timer matches 0 run title @a title {"text": "§d5"}
execute if score swap_countdown deathswap.timer matches 5 if score tick deathswap.timer matches 0 run execute as @a at @s run playsound block.lever.click master @s ~ ~ ~

execute if score swap_countdown deathswap.timer matches 4 if score tick deathswap.timer matches 0 run title @a title {"text": "§34"}
execute if score swap_countdown deathswap.timer matches 4 if score tick deathswap.timer matches 0 run execute as @a at @s run playsound block.lever.click master @s ~ ~ ~

execute if score swap_countdown deathswap.timer matches 3 if score tick deathswap.timer matches 0 run title @a title {"text": "§43"}
execute if score swap_countdown deathswap.timer matches 3 if score tick deathswap.timer matches 0 run execute as @a at @s run playsound block.lever.click master @s ~ ~ ~

execute if score swap_countdown deathswap.timer matches 2 if score tick deathswap.timer matches 0 run title @a title {"text": "§62"}
execute if score swap_countdown deathswap.timer matches 2 if score tick deathswap.timer matches 0 run execute as @a at @s run playsound block.lever.click master @s ~ ~ ~

execute if score swap_countdown deathswap.timer matches 1 if score tick deathswap.timer matches 0 run title @a title {"text": "§c1"}
execute if score swap_countdown deathswap.timer matches 1 if score tick deathswap.timer matches 0 run execute as @a at @s run playsound block.lever.click master @s ~ ~ ~

#旁觀
team join spectator @a[team=]
tag @a[team=spectator] add spectator
tag @a[team=spectator] remove player
tag @a[tag=died] add spectator
effect give @a[tag=spectator] night_vision 11 255 true
execute as @a[tag=spectator] run gamemode spectator @s

#滅團
execute if score team_red deathswap.status matches 1 if score red_count deathswap.count matches 0 run function deathswap:play/wiped_out/red_team
execute if score team_blue deathswap.status matches 1 if score blue_count deathswap.count matches 0 run function deathswap:play/wiped_out/blue_team
execute if score team_yellow deathswap.status matches 1 if score yellow_count deathswap.count matches 0 run function deathswap:play/wiped_out/yellow_team
execute if score team_green deathswap.status matches 1 if score green_count deathswap.count matches 0 run function deathswap:play/wiped_out/green_team

#win
execute if score team_red deathswap.status matches 1 if score team_blue deathswap.status matches 0 if score team_yellow deathswap.status matches 0 if score team_green deathswap.status matches 0 run function deathswap:end/red_win
execute if score team_blue deathswap.status matches 1 if score team_red deathswap.status matches 0 if score team_yellow deathswap.status matches 0 if score team_green deathswap.status matches 0 run function deathswap:end/blue_win
execute if score team_yellow deathswap.status matches 1 if score team_red deathswap.status matches 0 if score team_blue deathswap.status matches 0 if score team_green deathswap.status matches 0 run function deathswap:end/yellow_win
execute if score team_green deathswap.status matches 1 if score team_red deathswap.status matches 0 if score team_blue deathswap.status matches 0 if score team_yellow deathswap.status matches 0 run function deathswap:end/green_win
execute if score team_red deathswap.status matches 0 if score team_blue deathswap.status matches 0 if score team_yellow deathswap.status matches 0 if score team_green deathswap.status matches 0 run function deathswap:end/all_fail