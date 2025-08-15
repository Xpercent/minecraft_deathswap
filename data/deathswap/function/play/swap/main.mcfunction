scoreboard players add swap_count deathswap.count 1

#隨機選擇
execute if score team_red deathswap.status matches 1 as @a[team=red,tag=player,sort=random,limit=1] at @s run function deathswap:play/swap/red_pos
execute if score team_blue deathswap.status matches 1 as @a[team=blue,tag=player,sort=random,limit=1] at @s run function deathswap:play/swap/blue_pos 
execute if score team_yellow deathswap.status matches 1 as @a[team=yellow,tag=player,sort=random,limit=1] at @s run function deathswap:play/swap/yellow_pos
execute if score team_green deathswap.status matches 1 as @a[team=green,tag=player,sort=random,limit=1] at @s run function deathswap:play/swap/green_pos

execute if score team_count deathswap.count matches 4 run function deathswap:play/swap/4p
execute if score team_count deathswap.count matches 3 run function deathswap:play/swap/3p
execute if score team_count deathswap.count matches 2 run function deathswap:play/swap/4p
kill @e[tag=pos]
scoreboard players reset swap_check deathswap.status

#傳送無敵
execute if score invincible deathswap.setting matches 1 run effect give @a[tag=player] resistance 1 255 true
execute if score invincible deathswap.setting matches 3 run effect give @a[tag=player] resistance 3 255 true

title @a title ""
execute if score language deathswap.setting matches 1 run title @a subtitle "§6Swap!"
execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§fSwap! "},{"text": "§6Round ","bold": true,"color": "gold"},{"score":{"name": "swap_count","objective": "deathswap.count"},"bold": true,"color": "gold"},{"text": " - ","bold": true,"color": "gold"},{"score":{"name": "second","objective": "deathswap.timer"},"bold": true,"color": "gold"},{"text": "s","bold": true,"color": "gold"}]
execute if score language deathswap.setting matches 2 run title @a subtitle "§6死亡交換！"
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": "§f交換！"},{"text": "§6第","bold": true,"color": "gold"},{"score":{"name": "swap_count","objective": "deathswap.count"},"bold": true,"color": "gold"},{"text": "回合","bold": true,"color": "gold"},{"score":{"name": "second","objective": "deathswap.timer"},"bold": true,"color": "gold"},{"text": "秒","bold": true,"color": "gold"}]

execute as @a at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~

function deathswap:play/random_swap_time