#> spawner:command/main
    execute as @a[predicate=spawner:egg] if entity @s[predicate=spawner:sneak] at @s if block ~ ~-1 ~ #spawner:command_block{Command:"add"} if block ~ ~-2 ~ spawner positioned ~ ~-1 ~ run function spawner:command/add 
    execute as @a[nbt={SelectedItem:{id:"minecraft:spawner"}}] if entity @s[predicate=spawner:sneak] at @s if block ~ ~-1 ~ #spawner:command_block{Command:"get"} if block ~ ~-2 ~ spawner positioned ~ ~-1 ~ run function spawner:command/get
    execute as @a[nbt={SelectedItem:{id:"minecraft:command_block"}}] if entity @s[predicate=spawner:sneak] at @s if block ~ ~-1 ~ #spawner:command_block{Command:"get"} if block ~ ~-2 ~ spawner positioned ~ ~-1 ~ run function spawner:command/get
    execute as @a[predicate=spawner:egg] if entity @s[predicate=spawner:sneak] at @s if block ~ ~-1 ~ #spawner:command_block{Command:"set"} if block ~ ~-2 ~ spawner positioned ~ ~-1 ~ run function spawner:command/set


