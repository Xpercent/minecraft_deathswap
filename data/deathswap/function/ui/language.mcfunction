#1 english
#2 中文

tellraw @s [{"text": "§e>>>>> "},{"translate":"narrator.button.language","color":"yellow"},{"text": "§e <<<<<"}]
tellraw @s {"text": "§7Only the OP player can set language 只有OP玩家才能設定語言 "}
tellraw @s {"text": "§7Language changes will reset game 語言變更會重製遊戲 "}
tellraw @s ""
tellraw @s [{"text": "§c[English] ","clickEvent": {"action":"run_command","value": "/function deathswap:setting/language/en_us"},"hoverEvent": {"action": "show_text","value": "Set language to English"}},{"text": "§b[中文]","clickEvent": {"action":"run_command","value": "/function deathswap:setting/language/zh_tw"},"hoverEvent": {"action": "show_text","value": "將語言設定為中文"}}]
tellraw @s ""
tellraw @s [{"text": "§7("},{"translate":"options.languageWarning","color":"gray"},{"text": "§7)"}]
tellraw @s ""

execute as @s at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1

function deathswap:ui/update/main