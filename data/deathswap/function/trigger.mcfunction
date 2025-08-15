scoreboard players enable @a deathswap

#   1 info
#   5 reset game
# 100 gmchange switch
# 101 gmchange survival +5
# 102 gmchange survival +10
# 103 gmchange survival -5
# 104 gmchange survival -10
# 111 gmchange creative 1
# 112 gmchange creative 5
# 113 gmchange creative -1
# 114 gmchange creative -5

#error
execute as @a[tag=!admin,scores={deathswap=2..}] run tellraw @s {"translate":"commands.help.failed","color":"red"}
execute as @a[tag=!admin,scores={deathswap=..-1}] run tellraw @s {"translate":"commands.help.failed","color":"red"}

#info
execute as @a[scores={deathswap=1}] run function deathswap:ui/info

#reset
execute as @a[tag=admin,scores={deathswap=5}] run function deathswap:reset

#gmchange
execute if score game deathswap.status matches 0 as @a[tag=admin,scores={deathswap=100}] run function deathswap:setting/gmchange/switch
execute if score game deathswap.status matches 0 as @a[tag=admin,scores={deathswap=101}] run function deathswap:setting/gmchange/add_survival {survival:5}
execute if score game deathswap.status matches 0 as @a[tag=admin,scores={deathswap=102}] run function deathswap:setting/gmchange/add_survival {survival:10}
execute if score game deathswap.status matches 0 as @a[tag=admin,scores={deathswap=103}] run function deathswap:setting/gmchange/minus_survival {survival:5}
execute if score game deathswap.status matches 0 as @a[tag=admin,scores={deathswap=104}] run function deathswap:setting/gmchange/minus_survival {survival:10}
execute if score game deathswap.status matches 0 as @a[tag=admin,scores={deathswap=111}] run function deathswap:setting/gmchange/add_creative {creative:1}
execute if score game deathswap.status matches 0 as @a[tag=admin,scores={deathswap=112}] run function deathswap:setting/gmchange/add_creative {creative:5}
execute if score game deathswap.status matches 0 as @a[tag=admin,scores={deathswap=113}] run function deathswap:setting/gmchange/minus_creative {creative:1}
execute if score game deathswap.status matches 0 as @a[tag=admin,scores={deathswap=114}] run function deathswap:setting/gmchange/minus_creative {creative:5}

scoreboard players set @a deathswap 0