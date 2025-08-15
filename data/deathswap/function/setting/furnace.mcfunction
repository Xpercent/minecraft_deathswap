scoreboard players add furnace deathswap.setting 1
execute if score furnace deathswap.setting matches 2 run scoreboard players set furnace deathswap.setting 0

#en
execute if score language deathswap.setting matches 1 if score furnace deathswap.setting matches 0 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§fThe item cooked is §cDisable"}]
execute if score language deathswap.setting matches 1 if score furnace deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§fThe item cooked is §aEnabled"}]

#中文
execute if score language deathswap.setting matches 2 if score furnace deathswap.setting matches 0 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": "§f物品免燒已§c關閉"}]
execute if score language deathswap.setting matches 2 if score furnace deathswap.setting matches 1 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": "§f物品免燒已§a開啟"}]

execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1

function deathswap:ui/update/main
