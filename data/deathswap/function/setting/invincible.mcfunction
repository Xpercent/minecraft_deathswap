scoreboard players add invincible deathswap.setting 1
execute if score invincible deathswap.setting matches 2 run scoreboard players set invincible deathswap.setting 3
execute if score invincible deathswap.setting matches 4 run scoreboard players set invincible deathswap.setting 0

#en
execute if score language deathswap.setting matches 1 if score invincible deathswap.setting matches 0 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§fThe swap invincible is §cDisable"}]
execute if score language deathswap.setting matches 1 if score invincible deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§fThe swap invincible is set §a1s"}]
execute if score language deathswap.setting matches 1 if score invincible deathswap.setting matches 3 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§fThe swap invincible is set §a3s"}]

#中文
execute if score language deathswap.setting matches 2 if score invincible deathswap.setting matches 0 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": "§f傳送無敵已§c關閉"}]
execute if score language deathswap.setting matches 2 if score invincible deathswap.setting matches 1 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": "§f傳送無敵已設定為§a1秒"}]
execute if score language deathswap.setting matches 2 if score invincible deathswap.setting matches 3 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": "§f傳送無敵已設定為§a3秒"}]

execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1

function deathswap:ui/update/main
