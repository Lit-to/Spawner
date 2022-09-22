# スポナー簡易作成DTP
ランダムなスポーンブロックを作成・参照出来るデータパックです。ただし、スポナー作成は簡易的なので、もっと具体的に作りたい場合は[mcstacker](https://mcstacker.net/)等ツールのほうが詳らかに作れます。
# 作成目的
スポーンブロックを作るためというより、ctrl+mouse3が効かないのが嫌だったので作りました。ついでにスポナー作成機能も入れました。
# 作成環境
ver 1.18.2
前提データパックなし
# 使い方
このデータパックは使い方が二通りあります。1のほうがわかりやすそうで、2のほうが簡単です。
-   1.コマンドブロックのカスタムコマンドの利用→[こちら](#1カスタムコマンドを使う場合)
-   2.コマンドから直接使用
## 1.カスタムコマンドを使う場合
1. 何らかの方法で毎tick ``function spawner:tick``を実行
2. スポーンブロックを設置
3. スポーンブロックの上にコマンドブロックを設置
4. コマンドブロックに記入→内容は[こちら](###カスタムコマンド一覧)の**カスタム**を参照
5. コマンドブロックの上でスニーク
6. コマンドブロックが消えたら成功

## 2.コマンドから直接使う場合
1. スポーンブロックを設置
2. スポーンブロックの上で以下のコマンドを実行

### コマンド一覧
| カスタム | function                        | 内容                                                                             | 条件                             |
| :------: | :------------------------------ | :------------------------------------------------------------------------------- | :------------------------------- |
| ``set``  | ``/function spawner:item/set``  | 足元のスポーンブロックを真っ新にしたうえで手に持っているスポーンエッグを設定する | **スポーンエッグを持って実行**   |
| ``add``  | ``/function spawner:item/add``  | 手に持っているスポーンエッグから足元のスポーンブロックのスポーンリストに追加する | **スポーンエッグを持って実行**   |
| ``get``  | ``/function spawner:block/get`` | 手に持っているスポナーに足元のスポーンブロックの内容をコピーする                 | **スポーンブロックを持って実行** |

### 註
``set``は毎回毎回すべてをリセットします。デフォルトのブタさんが邪魔な時に使うのを推奨します。
何か間違えて入れてしまった場合は壊して置きなおすと良いです。
``add``はlistの限界まで入れられると思います。weightの値などは変更出来ません。
