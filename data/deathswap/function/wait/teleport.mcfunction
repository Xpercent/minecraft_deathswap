execute as @e[type=marker,tag=lobby] at @s unless dimension the_nether run spreadplayers 0 0 2000 100000 true @a[tag=player]
execute as @e[type=marker,tag=lobby] at @s if dimension the_nether run spreadplayers 0 0 2000 100000 under 127 true @a[tag=player]

execute as @a[team=red,tag=player,limit=1] at @s run summon marker ~ ~ ~ {Tags:["start"],CustomName:"\"red_start\""}
execute as @a[team=blue,tag=player,limit=1] at @s run summon marker ~ ~ ~ {Tags:["start"],CustomName:"\"blue_start\""}
execute as @a[team=yellow,tag=player,limit=1] at @s run summon marker ~ ~ ~ {Tags:["start"],CustomName:"\"yellow_start\""}
execute as @a[team=green,tag=player,limit=1] at @s run summon marker ~ ~ ~ {Tags:["start"],CustomName:"\"green_start\""}

tp @a[team=red,tag=player] @e[type=marker,name="red_start",limit=1]
tp @a[team=blue,tag=player] @e[type=marker,name="blue_start",limit=1]
tp @a[team=yellow,tag=player] @e[type=marker,name="yellow_start",limit=1]
tp @a[team=green,tag=player] @e[type=marker,name="green_start",limit=1]