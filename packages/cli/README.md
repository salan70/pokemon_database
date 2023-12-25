# cli パッケージ

## 本パッケージについて

ポケモンのデータを Poke API から取得し、 DB に保存する処理を格納しています。

## 実行方法

本パッケージのルートで、以下いずれかのコマンドを叩くと実行されます。

```sh
fvm dart run bin/execute.dart

# Makefile で上記コマンドを実行するよう設定しています。
make execute
```

実行が完了したら、以下に db ファイルが出力されます。  
`packages/assets/db`

## 注意事項

### 実行環境について

実行確認は、以下環境でしか行っていません。  
また、他環境での実行は考慮していません。

```sh
# $ fvm dart --version
Dart SDK version: 3.2.3 (stable) (Tue Dec 5 17:58:33 2023 +0000) on "macos_x64"
```

### 処理時間について

処理の開始から終了まで 2, 3時間程度かかります。