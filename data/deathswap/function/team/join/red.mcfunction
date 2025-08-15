team join red
execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"selector": "@s"},{"text": " §cjoined the red team"}]
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"selector": "@s"},{"text": " §c加入紅隊"}]
execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1

function deathswap:ui/update/main