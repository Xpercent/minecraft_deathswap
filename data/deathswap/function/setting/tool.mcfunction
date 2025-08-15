scoreboard players add tool deathswap.setting 1
execute if score tool deathswap.setting matches 6 run scoreboard players set tool deathswap.setting 0

#en
execute if score language deathswap.setting matches 1 if score tool deathswap.setting matches 0 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§fThe start tool is §cDisable"}]
execute if score language deathswap.setting matches 1 if score tool deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§fThe start tool is §aWooden tools + 4 breads"}]
execute if score language deathswap.setting matches 1 if score tool deathswap.setting matches 2 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§fThe start tool is §aStone tools + 8 breads"}]
execute if score language deathswap.setting matches 1 if score tool deathswap.setting matches 3 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§fThe start tool is §aIron tools + 16 breads"}]
execute if score language deathswap.setting matches 1 if score tool deathswap.setting matches 4 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§fThe start tool is §aDiamond tools + 32 breads"}]
execute if score language deathswap.setting matches 1 if score tool deathswap.setting matches 5 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§fThe start tool is §aNetherite tools + 64 breads"}]

#中文
execute if score language deathswap.setting matches 2 if score tool deathswap.setting matches 0 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": "§f起始工具已§c關閉"}]
execute if score language deathswap.setting matches 2 if score tool deathswap.setting matches 1 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": "§f起始工具已設定為§a木製工具+4個麵包"}]
execute if score language deathswap.setting matches 2 if score tool deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": "§f起始工具已設定為§a石製工具+8個麵包"}]
execute if score language deathswap.setting matches 2 if score tool deathswap.setting matches 3 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": "§f起始工具已設定為§a鐵製工具+16個麵包"}]
execute if score language deathswap.setting matches 2 if score tool deathswap.setting matches 4 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": "§f起始工具已設定為§a鑽石工具+32個麵包"}]
execute if score language deathswap.setting matches 2 if score tool deathswap.setting matches 5 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": "§f起始工具已設定為§a獄髓工具+64個麵包"}]

execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1

function deathswap:ui/update/main
