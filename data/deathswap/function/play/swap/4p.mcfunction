scoreboard players reset swap_check deathswap.status
tag @e[tag=pos] remove pos1
tag @e[tag=pos] remove pos2
tag @e[tag=pos] remove pos3
tag @e[tag=pos] remove pos4

execute if score team_red deathswap.status matches 1 run tag @e[tag=pos,tag=!pos1,tag=!pos2,tag=!pos3,tag=!pos4,name=!"red_pos",sort=random,limit=1] add pos1
execute if score team_blue deathswap.status matches 1 run tag @e[tag=pos,tag=!pos1,tag=!pos2,tag=!pos3,tag=!pos4,name=!"blue_pos",sort=random,limit=1] add pos2
execute if score team_yellow deathswap.status matches 1 run tag @e[tag=pos,tag=!pos1,tag=!pos2,tag=!pos3,tag=!pos4,name=!"yellow_pos",sort=random,limit=1] add pos3
execute if score team_green deathswap.status matches 1 run tag @e[tag=pos,tag=!pos1,tag=!pos2,tag=!pos3,tag=!pos4,name=!"green_pos",sort=random,limit=1] add pos4

#if entity @e[tag=pos1] if entity @e[tag=pos2] if entity @e[tag=pos3] if entity @e[tag=pos4] 

#swap check
execute if entity @e[tag=pos1] run scoreboard players add swap_check deathswap.status 1
execute if entity @e[tag=pos2] run scoreboard players add swap_check deathswap.status 1
execute if entity @e[tag=pos3] run scoreboard players add swap_check deathswap.status 1
execute if entity @e[tag=pos4] run scoreboard players add swap_check deathswap.status 1

#swap check ok
execute if score team_count deathswap.count matches 1 if score swap_check deathswap.status matches 1 run function deathswap:play/swap/4p_tp
execute if score team_count deathswap.count matches 2 if score swap_check deathswap.status matches 2 run function deathswap:play/swap/4p_tp
execute if score team_count deathswap.count matches 3 if score swap_check deathswap.status matches 3 run function deathswap:play/swap/4p_tp
execute if score team_count deathswap.count matches 4 if score swap_check deathswap.status matches 4 run function deathswap:play/swap/4p_tp

#swap check error
execute if score team_count deathswap.count matches 1 unless score swap_check deathswap.status matches 1 run function deathswap:play/swap/4p
execute if score team_count deathswap.count matches 2 unless score swap_check deathswap.status matches 2 run function deathswap:play/swap/4p
execute if score team_count deathswap.count matches 3 unless score swap_check deathswap.status matches 3 run function deathswap:play/swap/4p
execute if score team_count deathswap.count matches 4 unless score swap_check deathswap.status matches 4 run function deathswap:play/swap/4p
