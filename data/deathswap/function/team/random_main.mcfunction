function deathswap:ui/update/main
function deathswap:team/reset_team_non-spectator
$function deathswap:team/random_$(random)

#中文
execute if entity @a[team=red] if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§cRed team: "},{"selector":"@a[team=red]"}]
execute if entity @a[team=blue] if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§9Blue team: "},{"selector":"@a[team=blue]"}]
execute if entity @a[team=yellow] if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§6Yellow team: "},{"selector":"@a[team=yellow]"}]
execute if entity @a[team=green] if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7§l｜§r"},{"text": "§aGreen team: "},{"selector":"@a[team=green]"}]

#en
execute if entity @a[team=red] if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": "§c紅隊："},{"selector":"@a[team=red]"}]
execute if entity @a[team=blue] if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": "§9藍隊："},{"selector":"@a[team=blue]"}]
execute if entity @a[team=yellow] if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": "§6黃隊："},{"selector":"@a[team=yellow]"}]
execute if entity @a[team=green] if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7§l｜§r"},{"text": "§a綠隊："},{"selector":"@a[team=green]"}]