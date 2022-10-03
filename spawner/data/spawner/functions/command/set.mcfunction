#> spawner:command/set

function spawner:main
give @s command_block{BlockEntityTag:{Command:"add"}}
setblock ~ ~ ~ air 

