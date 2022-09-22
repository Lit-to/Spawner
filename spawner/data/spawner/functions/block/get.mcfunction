#> spawner:block/get
data modify storage spawner: block set from block ~ ~-1 ~
data modify storage spawner: history append from storage spawner: block
item modify entity @s weapon.mainhand spawner:copy
setblock ~ ~ ~ air
