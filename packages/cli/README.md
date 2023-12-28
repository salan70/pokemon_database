# cli パッケージ

## 本パッケージについて

「Poke API からのデータ取得」や「DB の保存、更新」を CLI で行う処理を格納しています。

## 実行方法

本パッケージのルートで、以下いずれかのコマンドを叩くと実行されます。

```sh
fvm dart run bin/〇〇（ファイル名）

# Makefile で設定しています。
make exe_〇〇
```

保存や更新対象の db ファイルは以下に格納しています。
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

`fetch_and_save.dart`は、処理の開始から終了まで 2, 3時間程度かかります。