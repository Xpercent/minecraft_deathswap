scoreboard players add mobspawn deathswap.setting 1
execute if score mobspawn deathswap.setting matches 2 run scoreboard players set mobspawn deathswap.setting 0

#中文
execute if score language deathswap.setting matches 1 if score mobspawn deathswap.setting matches 0 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§fThe monster spawn is §aEnabled"}]
execute if score language deathswap.setting matches 1 if score mobspawn deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§fThe monster spawn is §cDisable"}]

#中文
execute if score language deathswap.setting matches 2 if score mobspawn deathswap.setting matches 0 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": "§f怪物生成已§a開啟"}]
execute if score language deathswap.setting matches 2 if score mobspawn deathswap.setting matches 1 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": "§f怪物生成已§c關閉"}]

execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1

function deathswap:ui/update/main
