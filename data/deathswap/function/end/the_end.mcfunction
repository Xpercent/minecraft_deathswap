scoreboard players set end deathswap.timer 0
scoreboard players set game deathswap.status 3

scoreboard objectives setdisplay list deathswap.win_score
scoreboard objectives setdisplay sidebar deathswap.win_score

bossbar set deathswap:swap_time visible false
execute as @a[tag=win] at @s run playsound ui.toast.challenge_complete master @s
execute as @a[tag=win] at @s run particle end_rod ~ ~1 ~ 0 0 0 0.25 40 force

execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§fGame over! Thanks for playing!"}]
execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§fTime of this play: "},{"score":{"name": "play_time","objective": "deathswap.timer"},"color": "light_purple"},{"text": "§ds"}]
execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§6Death Swap §fMade by §dvipvincent"}]

execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": "§f遊戲結束！感謝你的遊玩！"}]
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": "§f本次遊玩時間："},{"score":{"name": "play_time","objective": "deathswap.timer"},"color": "light_purple"},{"text": "§d秒"}]
# execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": "§6死亡交換§f是由§d早安豆江 vipvincent§f製作"}]

tellraw @a ""
execute if score language deathswap.setting matches 1 run tellraw @a[tag=admin] [{"text": "§b      >>>      [Click here to reset the game]      <<<      ","clickEvent": {"action": "run_command","value": "/trigger deathswap set 5"}}]
execute if score language deathswap.setting matches 2 run tellraw @a[tag=admin] [{"text": "§b      >>>      [點選此處重製遊戲]      <<<      ","clickEvent": {"action": "run_command","value": "/trigger deathswap set 5"}}]
execute if score language deathswap.setting matches 1 run tellraw @a[tag=!admin] {"text": "§d§lPlease wait for the admin to reset the game!"}
execute if score language deathswap.setting matches 2 run tellraw @a[tag=!admin] {"text": "§d§l請等待管理員重製遊戲！"}
tellraw @a ""