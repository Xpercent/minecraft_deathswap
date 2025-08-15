function deathswap:play/random_swap_time

#bossbar 
execute if score gmchange deathswap.setting matches 1 run bossbar set deathswap:gmchange_time visible true
bossbar set deathswap:swap_time visible true
execute if score language deathswap.setting matches 1 run bossbar set deathswap:wait name "§aGame started!"
execute if score language deathswap.setting matches 2 run bossbar set deathswap:wait name "§a遊戲開始！"

scoreboard players reset @a deathswap.hurt
scoreboard players reset @a deathswap.death
execute as @a run scoreboard players operation @s deathswap.hurt = @s deathswap.health

scoreboard players set game deathswap.status 2

#title
execute if score language deathswap.setting matches 1 run title @a title {"text": "§6Death Swap"}
execute if score language deathswap.setting matches 1 run title @a subtitle {"text": "§aGame started!"}
execute if score language deathswap.setting matches 2 run title @a title {"text": "§6死亡交換"}
execute if score language deathswap.setting matches 2 run title @a subtitle {"text": "§a遊戲開始！"}

#text
execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§fGame start!"}]
execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§fYou can use /tm to chat with teammates","clickEvent": {"action": "suggest_command","value": "/tm "},"hoverEvent": {"action": "show_text","value": "/tm <message>"}}]
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": "§f遊戲開始！"}]
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": "§f你可以使用 /tm 與隊友聊天","clickEvent": {"action": "suggest_command","value": "/tm "},"hoverEvent": {"action": "show_text","value": "/tm <訊息>"}}]

#reset
tellraw @a[tag=admin] ""
execute if score language deathswap.setting matches 1 run tellraw @a[tag=admin] [{"text": "§b[Click here to reset the game]","clickEvent": {"action": "run_command","value": "/trigger deathswap set 5"}}]
execute if score language deathswap.setting matches 2 run tellraw @a[tag=admin] [{"text": "§b[點選此處重製遊戲]","clickEvent": {"action": "run_command","value": "/trigger deathswap set 5"}}]
tellraw @a[tag=admin] ""

#spectator
execute if score language deathswap.setting matches 1 run tellraw @a[tag=spectator] {"text": "§7Hey, since you are an spectator, for the sake of game fairness, please don’t tell others the next swap time!"}
execute if score language deathswap.setting matches 2 run tellraw @a[tag=spectator] {"text": "§7嘿，你既然是觀察者，為了遊戲公平性，\n所以請你不要將下次傳送時間，告訴其他人！"}

execute as @a at @s run playsound entity.wither.spawn master @s ~ ~ ~
