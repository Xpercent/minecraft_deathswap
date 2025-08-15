tellraw @s {"text": "§8§m+----------------***----------------+"}

#en
execute if score language deathswap.setting matches 1 run tellraw @s {"text": "§r§fThis world/server use §6Death Swap"}
execute if score language deathswap.setting matches 1 run tellraw @s {"text": "§r§fVersion: v2.4§r§f | Made by: §dvipvincent"}

#中文
execute if score language deathswap.setting matches 2 run tellraw @s {"text": "§r§f此世界/伺服器使用§6死亡交換"}
execute if score language deathswap.setting matches 2 run tellraw @s {"text": "§r§f版本：v2.4§r§f｜製作：§d早安豆江 vipvincent"}

function deathswap:ui/link

tellraw @s {"text": "§8§m+----------------***----------------+"}