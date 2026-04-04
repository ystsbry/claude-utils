# claude-utils

Claude Code で使用するカスタムスキルやユーティリティを管理するプラグインです。

## セットアップ

### プラグインとしてインストールする（推奨）

Claude Code のプラグインシステムを使ってインストールできます。

**ローカルからテスト：**

```bash
claude --plugin-dir /path/to/claude-utils
```

スキルは `/claude-utils:<スキル名>` の形式で呼び出せます（例: `/claude-utils:commit-msg`）。

### ユーティリティスクリプトをインストールする

`bin/` 配下のユーティリティスクリプトを `/usr/local/bin` にインストールできます。

```bash
sudo make install
```

インストールされるコマンド：

| コマンド | 説明 |
|---|---|
| `claude-utils-clean` | `~/.claude-utils/session/` 配下の一時ファイルを削除する |
| `claude-utils-list` | `~/.claude-utils/session/` 配下のセッション一覧を表示する |

インストール先を変更する場合は `PREFIX` を指定してください。

```bash
sudo make install PREFIX=/opt/bin
```

アンインストールする場合：

```bash
sudo make uninstall
```

## スキル一覧

| スキル | 説明 |
|---|---|
| `commit-msg` | staged changes から Conventional Commit 形式のコミットメッセージを生成 |
| `code-reading` | フロントエンド・バックエンド横断でコードを読み解き全体像を可視化 |
| `delivery-guide` | デザインドキュメントから実装ガイドを生成 |
| `design-doc` | ざっくりした要件から Design Document を生成 |
| `pbi` | タイトルから PBI（Product Backlog Item）を生成 |
| `session-list` | セッション一覧を表示 |
