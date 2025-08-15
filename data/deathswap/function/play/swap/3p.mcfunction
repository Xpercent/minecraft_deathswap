#random
scoreboard players set swap3 deathswap.timer 1
execute if predicate deathswap:random run scoreboard players set swap3 deathswap.timer 2

#swap 1
execute if score swap3 deathswap.timer matches 1 if score team_red deathswap.status matches 1 if score team_blue deathswap.status matches 1 run tp @a[team=red,tag=player] @e[name="blue_pos",limit=1]
execute if score swap3 deathswap.timer matches 1 if score team_red deathswap.status matches 1 if score team_blue deathswap.status matches 0 if score team_yellow deathswap.status matches 1 run tp @a[team=red,tag=player] @e[name="yellow_pos",limit=1]

execute if score swap3 deathswap.timer matches 1 if score team_blue deathswap.status matches 1 if score team_yellow deathswap.status matches 1 run tp @a[team=blue,tag=player] @e[name="yellow_pos",limit=1]
execute if score swap3 deathswap.timer matches 1 if score team_blue deathswap.status matches 1 if score team_yellow deathswap.status matches 0 if score team_green deathswap.status matches 1 run tp @a[team=blue,tag=player] @e[name="green_pos",limit=1]

execute if score swap3 deathswap.timer matches 1 if score team_yellow deathswap.status matches 1 if score team_green deathswap.status matches 1 run tp @a[team=yellow,tag=player] @e[name="green_pos",limit=1]
execute if score swap3 deathswap.timer matches 1 if score team_yellow deathswap.status matches 1 if score team_green deathswap.status matches 0 if score team_red deathswap.status matches 1 run tp @a[team=yellow,tag=player] @e[name="red_pos",limit=1]

execute if score swap3 deathswap.timer matches 1 if score team_green deathswap.status matches 1 if score team_red deathswap.status matches 1 run tp @a[team=green,tag=player] @e[name="red_pos",limit=1]
execute if score swap3 deathswap.timer matches 1 if score team_green deathswap.status matches 1 if score team_red deathswap.status matches 0 if score team_blue deathswap.status matches 1 run tp @a[team=green,tag=player] @e[name="blue_pos",limit=1]

#swap 2
execute if score swap3 deathswap.timer matches 2 if score team_green deathswap.status matches 1 if score team_yellow deathswap.status matches 1 run tp @a[team=green,tag=player] @e[name="yellow_pos",limit=1]
execute if score swap3 deathswap.timer matches 2 if score team_green deathswap.status matches 1 if score team_yellow deathswap.status matches 0 if score team_blue deathswap.status matches 1 run tp @a[team=green,tag=player] @e[name="blue_pos",limit=1]

execute if score swap3 deathswap.timer matches 2 if score team_yellow deathswap.status matches 1 if score team_blue deathswap.status matches 1 run tp @a[team=yellow,tag=player] @e[name="blue_pos",limit=1]
execute if score swap3 deathswap.timer matches 2 if score team_yellow deathswap.status matches 1 if score team_blue deathswap.status matches 0 if score team_red deathswap.status matches 1 run tp @a[team=yellow,tag=player] @e[name="red_pos",limit=1]

execute if score swap3 deathswap.timer matches 2 if score team_blue deathswap.status matches 1 if score team_red deathswap.status matches 1 run tp @a[team=blue,tag=player] @e[name="red_pos",limit=1]
execute if score swap3 deathswap.timer matches 2 if score team_blue deathswap.status matches 1 if score team_red deathswap.status matches 0 if score team_green deathswap.status matches 1 run tp @a[team=blue,tag=player] @e[name="green_pos",limit=1]

execute if score swap3 deathswap.timer matches 2 if score team_red deathswap.status matches 1 if score team_green deathswap.status matches 1 run tp @a[team=red,tag=player] @e[name="green_pos",limit=1]
execute if score swap3 deathswap.timer matches 2 if score team_red deathswap.status matches 1 if score team_green deathswap.status matches 0 if score team_yellow deathswap.status matches 1 run tp @a[team=red,tag=player] @e[name="yellow_pos",limit=1]


scoreboard players set swap3 deathswap.timer 1