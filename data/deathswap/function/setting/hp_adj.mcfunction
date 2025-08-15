scoreboard players add hp_adj deathswap.setting 1
execute if score hp_adj deathswap.setting matches 2 run scoreboard players set hp_adj deathswap.setting 10
execute if score hp_adj deathswap.setting matches 11 run scoreboard players set hp_adj deathswap.setting 20
execute if score hp_adj deathswap.setting matches 21 run scoreboard players set hp_adj deathswap.setting 30
execute if score hp_adj deathswap.setting matches 31 run scoreboard players set hp_adj deathswap.setting 40
execute if score hp_adj deathswap.setting matches 41 run scoreboard players set hp_adj deathswap.setting 1

#en
execute if score language deathswap.setting matches 1 if score hp_adj deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§fThe HP is set §a1 point"}]
execute if score language deathswap.setting matches 1 if score hp_adj deathswap.setting matches 10 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§fThe HP is set §a10 points"}]
execute if score language deathswap.setting matches 1 if score hp_adj deathswap.setting matches 20 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§fThe HP is set §c20 points (Minecraft Default)"}]
execute if score language deathswap.setting matches 1 if score hp_adj deathswap.setting matches 30 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§fThe HP is set §a30 points"}]
execute if score language deathswap.setting matches 1 if score hp_adj deathswap.setting matches 40 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§fThe HP is set §a40 points"}]

#中文
execute if score language deathswap.setting matches 2 if score hp_adj deathswap.setting matches 1 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": "§f血量已設定為§a1點"}]
execute if score language deathswap.setting matches 2 if score hp_adj deathswap.setting matches 10 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": "§f血量已設定為§a10點"}]
execute if score language deathswap.setting matches 2 if score hp_adj deathswap.setting matches 20 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": "§f血量已設定為§c20點(Minecraft預設值)"}]
execute if score language deathswap.setting matches 2 if score hp_adj deathswap.setting matches 30 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": "§f血量已設定為§a30點"}]
execute if score language deathswap.setting matches 2 if score hp_adj deathswap.setting matches 40 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": "§f血量已設定為§a40點"}]

execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1

function deathswap:ui/update/main
