scoreboard players add team_friendlyfire deathswap.setting 1
execute if score team_friendlyfire deathswap.setting matches 2 run scoreboard players set team_friendlyfire deathswap.setting 0

#en
execute if score language deathswap.setting matches 1 if score team_friendlyfire deathswap.setting matches 0 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§fThe same team friendly firefight is §aEnabled"}]
execute if score language deathswap.setting matches 1 if score team_friendlyfire deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§fThe same team friendly firefight is §cDisable"}]

#中文
execute if score language deathswap.setting matches 2 if score team_friendlyfire deathswap.setting matches 0 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": "§f同隊傷害已§a開啟"}]
execute if score language deathswap.setting matches 2 if score team_friendlyfire deathswap.setting matches 1 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": "§f同隊傷害已§c關閉"}]

execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1

function deathswap:ui/update/main
