tag @s remove player
tag @s add died
tag @s add spectator

#count
scoreboard players set red_count deathswap.count 0
scoreboard players set blue_count deathswap.count 0
scoreboard players set yellow_count deathswap.count 0
scoreboard players set green_count deathswap.count 0
execute as @a[team=red,tag=player] run scoreboard players add red_count deathswap.count 1
execute as @a[team=blue,tag=player] run scoreboard players add blue_count deathswap.count 1
execute as @a[team=yellow,tag=player] run scoreboard players add yellow_count deathswap.count 1
execute as @a[team=green,tag=player] run scoreboard players add green_count deathswap.count 1

scoreboard players set player_count deathswap.count 0
execute as @a[tag=player] run scoreboard players add player_count deathswap.count 1

scoreboard players set died_count deathswap.count 0
execute as @a[tag=died] run scoreboard players add died_count deathswap.count 1


title @a title ""
execute if score language deathswap.setting matches 1 run title @a subtitle [{"selector":"@s"},{"text": " §feliminated!"}]
execute if score language deathswap.setting matches 2 run title @a subtitle [{"selector":"@s"},{"text": " §f淘汰！"}]

#red
execute if entity @s[team=red] if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"selector":"@s"},{"text": " §feliminated! "},{"text": "§cRed §fteam has "},{"score":{"name": "red_count","objective": "deathswap.count"},"color": "light_purple"},{"text": " §fremaining players!"}]
execute if entity @s[team=red] if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"selector":"@s"},{"text": " §f淘汰！ "},{"text": "§c紅隊§f剩餘"},{"score":{"name": "red_count","objective": "deathswap.count"},"color": "light_purple"},{"text": "§f位玩家！"}]

#blue
execute if entity @s[team=blue] if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"selector":"@s"},{"text": " §feliminated! "},{"text": "§9Blue §fteam has "},{"score":{"name": "blue_count","objective": "deathswap.count"},"color": "light_purple"},{"text": " §fremaining players!"}]
execute if entity @s[team=blue] if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"selector":"@s"},{"text": " §f淘汰！ "},{"text": "§9藍隊§f剩餘"},{"score":{"name": "blue_count","objective": "deathswap.count"},"color": "light_purple"},{"text": "§f位玩家！"}]

#yellow
execute if entity @s[team=yellow] if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"selector":"@s"},{"text": " §feliminated! "},{"text": "§eYellow §fteam has "},{"score":{"name": "yellow_count","objective": "deathswap.count"},"color": "light_purple"},{"text": " §fremaining players!"}]
execute if entity @s[team=yellow] if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"selector":"@s"},{"text": " §f淘汰！ "},{"text": "§e黃隊§f剩餘"},{"score":{"name": "yellow_count","objective": "deathswap.count"},"color": "light_purple"},{"text": "§f位玩家！"}]

#green
execute if entity @s[team=green] if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"selector":"@s"},{"text": " §feliminated! "},{"text": "§aGreen §fteam has "},{"score":{"name": "green_count","objective": "deathswap.count"},"color": "light_purple"},{"text": " §fremaining players!"}]
execute if entity @s[team=green] if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"selector":"@s"},{"text": " §f淘汰！ "},{"text": "§a綠隊§f剩餘"},{"score":{"name": "green_count","objective": "deathswap.count"},"color": "light_purple"},{"text": "§f位玩家！"}]

execute if score language deathswap.setting matches 1 run tellraw @s {"text": "§7Hey, although you have been eliminated, for the fairness of the game, so please do not tell your teammates or others the next swap time!"}
execute if score language deathswap.setting matches 2 run tellraw @s {"text": "§7嘿，雖然你已經淘汰了，但是為了遊戲公平性，\n所以請你不要將下次傳送時間，告訴你的隊友或其他人！"}

execute as @a at @s run playsound entity.blaze.death player @s ~ ~ ~