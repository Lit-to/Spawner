#> spawner:block/add
data modify storage spawner: SpawnPotentials set from block ~ ~-1 ~ SpawnPotentials
function spawner:process/in
data modify block ~ ~-1 ~ SpawnPotentials set from storage spawner: SpawnPotentials

