team join blue
execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"selector": "@s"},{"text": " §9joined the blue team"}]
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"selector": "@s"},{"text": " §9加入藍隊"}]
execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1

function deathswap:ui/update/main