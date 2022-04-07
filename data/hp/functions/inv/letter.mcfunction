function hp:inv/swap

advancement revoke @s only hp:offhand_letter

tellraw @s {"nbt":"SelectedItem.tag.Letter","entity":"@s","interpret":true}