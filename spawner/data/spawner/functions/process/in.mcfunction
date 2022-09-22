#> spawner:process/in
data modify storage spawner: in.egg set from entity @s SelectedItem.id
data modify storage spawner: in.data.entity set from entity @s SelectedItem.tag.EntityTag
data modify storage spawner: in.weight set value 1
function spawner:egg/spawn
data remove storage spawner: in.egg

data modify storage spawner: SpawnPotentials append from storage spawner: in
data remove storage spawner: in 


