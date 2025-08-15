tag @s remove admin
tag @s remove creative
tag @s add notadmin

execute if score game deathswap.status matches 0 run gamemode survival @s
execute if score game deathswap.status matches 0 run clear @s

execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"selector":"@s"},{"text": " §fhas removed §6admin privileges"}]
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"selector":"@s"},{"text": " §f已移除§6管理員權限"}]

execute if score game deathswap.status matches 0 if score language deathswap.setting matches 1 run title @s title [{"text": "§6Admin privileges removed"}]
execute if score game deathswap.status matches 0 if score language deathswap.setting matches 2 run title @s title [{"text": "§6已移除管理員權限"}]
execute if score game deathswap.status matches 0 run title @s subtitle [{"text": ""}]

execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1
function deathswap:ui/update/main