#> spawner:main
#> spawner:item/add
#手に持っているスポーンエッグをスポナーに変えてオフハンドに持つコマンド
#> spawner:block/set
#手に持っているスポーンエッグから足元のスポーンブロックに設定する
#> spawner:block/get
#手に持っているスポナーに足元のスポーンブロックの内容をコピーする



#declare storage spawner:
execute if block ~ ~-1 ~ spawner if entity @s[predicate=spawner:egg] run function spawner:block/set
execute unless block ~ ~-1 ~ spawner run tellraw @s [{"text": "スポーンブロックの上で実行してね"}]
execute unless entity @s[predicate=spawner:egg] run tellraw @s [{"text": "スポーンエッグを持たせて実行してね"}]

