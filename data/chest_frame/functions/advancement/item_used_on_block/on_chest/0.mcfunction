tag @s add cf.frame_check
execute positioned ^ ^ ^ summon item_display run function chest_frame:advancement/item_used_on_block/on_chest/00
tag @s remove cf.frame_check
kill @s