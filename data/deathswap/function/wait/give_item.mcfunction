#tool
#1 木製工具+4個麵包
execute if score tool deathswap.setting matches 1 run give @a[tag=player] wooden_axe
execute if score tool deathswap.setting matches 1 run give @a[tag=player] wooden_pickaxe
execute if score tool deathswap.setting matches 1 run give @a[tag=player] bread 4
#2 石製工具+8個麵包
execute if score tool deathswap.setting matches 2 run give @a[tag=player] stone_axe
execute if score tool deathswap.setting matches 2 run give @a[tag=player] stone_pickaxe
execute if score tool deathswap.setting matches 2 run give @a[tag=player] bread 8
#3 鐵製工具+16個麵包
execute if score tool deathswap.setting matches 3 run give @a[tag=player] iron_axe
execute if score tool deathswap.setting matches 3 run give @a[tag=player] iron_pickaxe
execute if score tool deathswap.setting matches 3 run give @a[tag=player] bread 16
#4 鑽石製工具+32個麵包
execute if score tool deathswap.setting matches 4 run give @a[tag=player] diamond_axe
execute if score tool deathswap.setting matches 4 run give @a[tag=player] diamond_pickaxe
execute if score tool deathswap.setting matches 4 run give @a[tag=player] bread 32
#5 獄髓製工具+64個麵包
execute if score tool deathswap.setting matches 5 run give @a[tag=player] netherite_axe
execute if score tool deathswap.setting matches 5 run give @a[tag=player] netherite_pickaxe
execute if score tool deathswap.setting matches 5 run give @a[tag=player] bread 64

#armor
#1 皮革裝備
execute if score armor deathswap.setting matches 1 run item replace entity @a[tag=player,team=red] armor.head with leather_helmet[dyed_color={rgb:11546150,show_in_tooltip:false}]
execute if score armor deathswap.setting matches 1 run item replace entity @a[tag=player,team=red] armor.chest with leather_chestplate[dyed_color={rgb:11546150,show_in_tooltip:false}]
execute if score armor deathswap.setting matches 1 run item replace entity @a[tag=player,team=red] armor.legs with leather_leggings[dyed_color={rgb:11546150,show_in_tooltip:false}]
execute if score armor deathswap.setting matches 1 run item replace entity @a[tag=player,team=red] armor.feet with leather_boots[dyed_color={rgb:11546150,show_in_tooltip:false}]

execute if score armor deathswap.setting matches 1 run item replace entity @a[tag=player,team=blue] armor.head with leather_helmet[dyed_color={rgb:3949748,show_in_tooltip:false}]
execute if score armor deathswap.setting matches 1 run item replace entity @a[tag=player,team=blue] armor.chest with leather_chestplate[dyed_color={rgb:3949748,show_in_tooltip:false}]
execute if score armor deathswap.setting matches 1 run item replace entity @a[tag=player,team=blue] armor.legs with leather_leggings[dyed_color={rgb:3949748,show_in_tooltip:false}]
execute if score armor deathswap.setting matches 1 run item replace entity @a[tag=player,team=blue] armor.feet with leather_boots[dyed_color={rgb:3949748,show_in_tooltip:false}]

execute if score armor deathswap.setting matches 1 run item replace entity @a[tag=player,team=yellow] armor.head with leather_helmet[dyed_color={rgb:16701501,show_in_tooltip:false}]
execute if score armor deathswap.setting matches 1 run item replace entity @a[tag=player,team=yellow] armor.chest with leather_chestplate[dyed_color={rgb:16701501,show_in_tooltip:false}]
execute if score armor deathswap.setting matches 1 run item replace entity @a[tag=player,team=yellow] armor.legs with leather_leggings[dyed_color={rgb:16701501,show_in_tooltip:false}]
execute if score armor deathswap.setting matches 1 run item replace entity @a[tag=player,team=yellow] armor.feet with leather_boots[dyed_color={rgb:16701501,show_in_tooltip:false}]

execute if score armor deathswap.setting matches 1 run item replace entity @a[tag=player,team=green] armor.head with leather_helmet[dyed_color={rgb:8439583,show_in_tooltip:false}]
execute if score armor deathswap.setting matches 1 run item replace entity @a[tag=player,team=green] armor.chest with leather_chestplate[dyed_color={rgb:8439583,show_in_tooltip:false}]
execute if score armor deathswap.setting matches 1 run item replace entity @a[tag=player,team=green] armor.legs with leather_leggings[dyed_color={rgb:8439583,show_in_tooltip:false}]
execute if score armor deathswap.setting matches 1 run item replace entity @a[tag=player,team=green] armor.feet with leather_boots[dyed_color={rgb:8439583,show_in_tooltip:false}]
#2 鎖鏈裝備
execute if score armor deathswap.setting matches 2 run item replace entity @a[tag=player] armor.head with chainmail_helmet
execute if score armor deathswap.setting matches 2 run item replace entity @a[tag=player] armor.chest with chainmail_chestplate
execute if score armor deathswap.setting matches 2 run item replace entity @a[tag=player] armor.legs with chainmail_leggings
execute if score armor deathswap.setting matches 2 run item replace entity @a[tag=player] armor.feet with chainmail_boots
#3 鐵製裝備
execute if score armor deathswap.setting matches 3 run item replace entity @a[tag=player] armor.head with iron_helmet
execute if score armor deathswap.setting matches 3 run item replace entity @a[tag=player] armor.chest with iron_chestplate
execute if score armor deathswap.setting matches 3 run item replace entity @a[tag=player] armor.legs with iron_leggings
execute if score armor deathswap.setting matches 3 run item replace entity @a[tag=player] armor.feet with iron_boots
#4 鑽石裝備
execute if score armor deathswap.setting matches 4 run item replace entity @a[tag=player] armor.head with diamond_helmet
execute if score armor deathswap.setting matches 4 run item replace entity @a[tag=player] armor.chest with diamond_chestplate
execute if score armor deathswap.setting matches 4 run item replace entity @a[tag=player] armor.legs with diamond_leggings
execute if score armor deathswap.setting matches 4 run item replace entity @a[tag=player] armor.feet with diamond_boots
#5 獄髓裝備
execute if score armor deathswap.setting matches 5 run item replace entity @a[tag=player] armor.head with netherite_helmet
execute if score armor deathswap.setting matches 5 run item replace entity @a[tag=player] armor.chest with netherite_chestplate
execute if score armor deathswap.setting matches 5 run item replace entity @a[tag=player] armor.legs with netherite_leggings
execute if score armor deathswap.setting matches 5 run item replace entity @a[tag=player] armor.feet with netherite_boots