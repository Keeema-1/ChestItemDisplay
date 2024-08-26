tag @s add cf.break_display
summon item ~ ~ ~ {Item:{id:"item_frame",Count:1b},Motion:[0.0d,0.05d,0.0d],Tags:["cf.drop_item"],Age:5999}
execute as @e[type=item,tag=cf.drop_item] run function chest_frame:chest_display/break/00
tag @s remove cf.break_display
execute unless entity @s[tag=cf.glowing] run summon item ~ ~ ~ {Item:{id:"item_frame",Count:1b},Motion:[0.0d,0.05d,0.0d]}
execute if entity @s[tag=cf.glowing] run summon item ~ ~ ~ {Item:{id:"glow_item_frame",Count:1b},Motion:[0.0d,0.05d,0.0d]}
kill @s