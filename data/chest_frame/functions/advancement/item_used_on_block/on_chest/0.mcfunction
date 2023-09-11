tag @s add cf.frame_check
summon armor_stand ~ ~ ~ {Tags:["cf.new"],Marker:1b}
execute as @e[type=armor_stand,tag=cd.new,limit=1] run function chest_frame:advancement/item_used_on_block/on_chest/00
tag @s remove cf.frame_check
kill @s