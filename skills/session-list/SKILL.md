---
name: session-list
description: |
  ~/.claude-utils/session 配下に保存されたセッションの一覧と作成日時を表示する。
  ユーザーが「セッション一覧」「セッションを確認」「どんなセッションがある？」「session list」などと言ったときに使う。
---

# セッション一覧表示スキル

`~/.claude-utils/session/` 配下に保存されたセッションの一覧を、作成日時・含まれるファイルとともに表示します。

## ステップ1: セッション一覧を取得する

以下のコマンドを実行してください：

```bash
claude-utils-list
```

コマンドが見つからない場合は、リポジトリ内のスクリプトを直接実行してください：

```bash
bash /home/ybaba/git-repo/my-repo/claude-utils/bin/claude-utils-list
```

## ステップ2: 結果を表示する

取得した一覧をユーザーに提示する。以下の情報を含めること：

- **セッション名**: ディレクトリ名
- **作成日時**: ディレクトリの作成日時（birth time、取得できない場合は最終更新日時）
- **含まれるファイル**: セッション内のファイル名と数

### 出力例

```
SESSION                                   CREATED               FILES
-------                                   -------               -----
gps-unavailability-detection              2026-03-31 13:51:00   2 (design-doc.md, delivery-guide.md)
```

## ステップ3: 追加アクション

一覧を表示した後、ユーザーが以下のアクションを要求する可能性がある：

- **セッション内のファイルを読む**: 指定されたセッションのファイルを `~/.claude-utils/session/<session-name>/` から読み込む
- **セッションを削除する**: `claude-utils-clean` を案内する
- **特定のセッションで delivery-guide を生成する**: delivery-guide スキルへ引き継ぐ
