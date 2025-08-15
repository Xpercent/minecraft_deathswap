tellraw @s ""

#en
execute if score language deathswap.setting matches 1 run tellraw @s[tag=!admin] [{"text": "§b[If you are an OP player, click here to obtain admin rights]","clickEvent": {"action": "run_command","value": "/tag @s add admin"},"hoverEvent": {"action": "show_text","value": "Only for OP players\n/tag @s add admin"}}]
execute if score language deathswap.setting matches 1 run tellraw @s[tag=admin] [{"text": "§c[You already have admin rights, click here to remove yours]","clickEvent": {"action": "run_command","value": "/tag @s remove admin"},"hoverEvent": {"action": "show_text","value": "Only for OP players\n/tag @s remove admin"}}]
#中文
execute if score language deathswap.setting matches 2 run tellraw @s[tag=!admin] [{"text": "§b[如果你是OP玩家，點擊此處即可獲得管理員權限]","clickEvent": {"action": "run_command","value": "/tag @s add admin"},"hoverEvent": {"action": "show_text","value": "限OP玩家使用\n/tag @s add admin"}}]
execute if score language deathswap.setting matches 2 run tellraw @s[tag=admin] [{"text": "§c[你已經擁有管理員權限，點擊此處即可移除自己的管理員權限]","clickEvent": {"action": "run_command","value": "/tag @s remove admin"},"hoverEvent": {"action": "show_text","value": "限OP玩家使用\n/tag @s remove admin"}}]

tellraw @s ""