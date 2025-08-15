scoreboard players add saturation deathswap.setting 1
execute if score saturation deathswap.setting matches 2 run scoreboard players set saturation deathswap.setting 0

#en
execute if score language deathswap.setting matches 1 if score saturation deathswap.setting matches 0 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§fThe saturation effect is §cDisable"}]
execute if score language deathswap.setting matches 1 if score saturation deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§fThe saturation effect is §aEnabled"}]

#中文
execute if score language deathswap.setting matches 2 if score saturation deathswap.setting matches 0 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": "§f飽食效果已§c關閉"}]
execute if score language deathswap.setting matches 2 if score saturation deathswap.setting matches 1 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": "§f飽食效果已§a開啟"}]

execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1

function deathswap:ui/update/main
