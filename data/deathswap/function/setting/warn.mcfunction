scoreboard players add warn deathswap.setting 5
execute if score warn deathswap.setting matches 15.. run scoreboard players set warn deathswap.setting 0

#en
execute if score language deathswap.setting matches 1 if score warn deathswap.setting matches 0 run tellraw @a  [{"text": "§6Death Swap§7§l｜§r"},{"text": "§fThe swap warn is §cDisable"}]
execute if score language deathswap.setting matches 1 if score warn deathswap.setting matches 5 run tellraw @a  [{"text": "§6Death Swap§7§l｜§r"},{"text": "§fThe swap warn is set §a5s"}]
execute if score language deathswap.setting matches 1 if score warn deathswap.setting matches 10 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§fThe swap warn is set §a10s"}]

#中文
execute if score language deathswap.setting matches 2 if score warn deathswap.setting matches 0 run tellraw @a  [{"text": "§6死亡交換§7§l｜§r"},{"text": "§f傳送警告已§c關閉"}]
execute if score language deathswap.setting matches 2 if score warn deathswap.setting matches 5 run tellraw @a  [{"text": "§6死亡交換§7§l｜§r"},{"text": "§f傳送警告已設定為§a5秒"}]
execute if score language deathswap.setting matches 2 if score warn deathswap.setting matches 10 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": "§f傳送警告已設定為§a10秒"}]

execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1

function deathswap:ui/update/main
