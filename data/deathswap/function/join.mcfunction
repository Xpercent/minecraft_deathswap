#spawnpoint
execute at @e[type=marker,tag=lobby,limit=1] run spawnpoint @s ~ ~ ~

#status 0
execute if score game deathswap.status matches 0 run effect clear @a
execute if score game deathswap.status matches 0 run clear @s
execute if score game deathswap.status matches 0 run xp set @a 0 points
execute if score game deathswap.status matches 0 run xp set @a 0 levels
execute if score game deathswap.status matches 0 run tp @s @e[type=marker,tag=lobby,limit=1]
execute if score game deathswap.status matches 0 run gamemode survival @s

execute as @s[tag=!notadmin,tag=!admin] run tag @s add notadmin
execute if score game deathswap.status matches 0 run function deathswap:ui/update/main

execute unless score language deathswap.setting matches 1.. run function deathswap:ui/language

#en
execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§fWelcome "},{"selector":"@s"},{"text": " §fto §6Death Swap"}]
execute if score language deathswap.setting matches 1 run title @s title {"text": "§6Death Swap"}
execute if score language deathswap.setting matches 1 run title @s subtitle {"text": "§dMade by vipvincent"}

#中文
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": "§f歡迎 "},{"selector":"@s"},{"text": " §f來到§6死亡交換"}]
execute if score language deathswap.setting matches 2 run title @s title {"text": "§6死亡交換"}
# execute if score language deathswap.setting matches 2 run title @s subtitle {"text": "§d製作：早安豆江 vipvincent"}

execute if score language deathswap.setting matches 1.. run execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 
execute if score language deathswap.setting matches 1.. run function deathswap:ui/info
execute if score language deathswap.setting matches 1.. if score game deathswap.status matches 0 run function deathswap:ui/click_admin

#status 2 play join
execute if score language deathswap.setting matches 1 if score game deathswap.status matches 2 as @s[tag=player] run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§dIn order to prevent system errors,"}]
execute if score language deathswap.setting matches 1 if score game deathswap.status matches 2 as @s[tag=player] run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§dso automatically knock out "},{"selector":"@s"}]
execute if score language deathswap.setting matches 2 if score game deathswap.status matches 2 as @s[tag=player] run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": "§d為了防止系統出錯，已自動淘汰 "},{"selector":"@s"}]
execute if score game deathswap.status matches 2 run kill @s

#spectator
execute if score game deathswap.status matches 1 run gamemode spectator
execute if score game deathswap.status matches 1 run team join spectator 
execute if score game deathswap.status matches 1..3 run gamemode spectator
