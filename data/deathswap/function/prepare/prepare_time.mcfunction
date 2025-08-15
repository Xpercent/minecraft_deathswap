#actionbar
execute if score language deathswap.setting matches 1 if score team_choose deathswap.setting matches 0 as @a[team=] run title @s actionbar [{"text": "  §7Not yet in the team"},{"text":"  §b>> Prepare Stage <<  "},{"text": "§dPlease wait for admin"}]
execute if score language deathswap.setting matches 1 if score team_choose deathswap.setting matches 1 as @a[team=] run title @s actionbar [{"text": " §7Not yet in the team"},{"text":"  §b>> Prepare Stage <<  "},{"text": "§dPlease select a team"}]
execute if score language deathswap.setting matches 1 as @a[team=red] run title @s actionbar [{"text": "  §cJoined the red team"},{"text":"  §b>> Prepare Stage <<  "},{"text": "§dPlease wait for start"}]
execute if score language deathswap.setting matches 1 as @a[team=blue] run title @s actionbar [{"text": " §9Joined the blue team"},{"text":"  §b>> Prepare Stage <<  "},{"text": "§dPlease wait for start"}]
execute if score language deathswap.setting matches 1 as @a[team=yellow] run title @s actionbar [{"text": "§eJoined the yellow team"},{"text":"  §b>> Prepare Stage <<  "},{"text": "§dPlease wait for start "}]
execute if score language deathswap.setting matches 1 as @a[team=green] run title @s actionbar [{"text": "§aJoined the green team"},{"text":"  §b>> Prepare Stage <<  "},{"text": "§dPlease wait for start"}]
execute if score language deathswap.setting matches 1 as @a[team=spectator] run title @s actionbar [{"text": " §7Joined the spectator"},{"text":"  §b>> Prepare Stage <<  "},{"text": "§dPlease wait for start"}]

execute if score language deathswap.setting matches 2 if score team_choose deathswap.setting matches 0 as @a[team=] run title @s actionbar [{"text": "§7尚未加入隊伍"},{"text":"  §b>> 準備階段 <<  "},{"text": "§d請等待管理員"}]
execute if score language deathswap.setting matches 2 if score team_choose deathswap.setting matches 1 as @a[team=] run title @s actionbar [{"text": "§7尚未加入隊伍"},{"text":"  §b>> 準備階段 <<  "},{"text": "§d請選擇隊伍　"}]
execute if score language deathswap.setting matches 2 as @a[team=red] run title @s actionbar [{"text": "§c已加入紅隊"},{"text":"  §b>> 準備階段 <<  "},{"text": "§d請等待開始"}]
execute if score language deathswap.setting matches 2 as @a[team=blue] run title @s actionbar [{"text": "§9已加入藍隊"},{"text":"  §b>> 準備階段 <<  "},{"text": "§d請等待開始"}]
execute if score language deathswap.setting matches 2 as @a[team=yellow] run title @s actionbar [{"text": "§e已加入黃隊"},{"text":"  §b>> 準備階段 <<  "},{"text": "§d請等待開始"}]
execute if score language deathswap.setting matches 2 as @a[team=green] run title @s actionbar [{"text": "§a已加入綠隊"},{"text":"  §b>> 準備階段 <<  "},{"text": "§d請等待開始"}]
execute if score language deathswap.setting matches 2 as @a[team=spectator] run title @s actionbar [{"text": "§7已加入旁觀"},{"text":"  §b>> 準備階段 <<  "},{"text": "§d請等待開始"}]

effect give @a night_vision 11 255 true
effect give @a resistance 1 255 true
effect give @a regeneration 1 255 true

execute as @a if score @s deathswap.death matches 1 run tp @s @e[type=marker,tag=lobby,limit=1]

execute as @a[tag=admin,tag=!creative,gamemode=creative] run function deathswap:prepare/changeto_creative
execute as @a[tag=admin,tag=creative,gamemode=!creative] run function deathswap:prepare/changeto_survival

function deathswap:ui/ui_click
