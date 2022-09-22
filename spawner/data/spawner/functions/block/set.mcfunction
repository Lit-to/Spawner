#> spawner:block/set
data modify storage spawner: SpawnPotentials set value []
function spawner:process/in
data modify block ~ ~-1 ~ SpawnPotentials set from storage spawner: SpawnPotentials
data remove block ~ ~-1 ~ SpawnData

