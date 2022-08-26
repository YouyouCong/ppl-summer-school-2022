# pplss-rehearsal

## ディレクトリ構成
- `example/`：講義で紹介するプログラム
- `exercise/`：演習用プログラム
- `solution/`：演習の解答（講義終了後に追加します）

## リンク集
- [スライド](https://drive.google.com/file/d/1SnvPm00NJCaitEZ9hukgDpnLvpdjgosY/view?usp=sharing)
- [OchaCaml デモページ](http://pllab.is.ocha.ac.jp/~asai/OchaCaml/demo/)
- [OchaCaml インストール手順](http://pllab.is.ocha.ac.jp/~asai/OchaCaml/)
（Mac ユーザは `brew install ymyzk/ymyzk/ochacaml` を実行するのが最も簡単です。
Windows ユーザは[こちらの記事](https://bleis-tift.hatenablog.com/entry/how-to-install-ochacaml-into-wsl)が参考になるかもしれません。）

## 演習の手順

### OchaCaml をインストールしていない場合
1. ブラウザを開き、OchaCaml デモページにアクセス
2. `exercise/` に置いてあるファイルを選択し、アップロード
3. プログラムを実装
4. `Run` ボタンでテストを実行

### OchaCaml をインストールしている場合
1. `exercise/` に置いてあるファイルをエディタで開く
2. プログラムを実装
3. ターミナルで `ochacaml` と打ち、インタプリタを起動
4. `#use "filename.ml ;;"` でプログラムを読み込み、テストを実行