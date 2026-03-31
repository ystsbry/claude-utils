# claude-utils

Claude Code で使用するカスタムスキルやユーティリティを管理するリポジトリです。

## セットアップ

### カスタムスキルをグローバルに利用する

このリポジトリの `skills/` ディレクトリ配下のスキルを、すべてのプロジェクトで利用できるようにするには、`~/.claude/skills` へのシンボリックリンクを作成します。

```bash
# ~/.claude/skills が既に存在する場合は事前に退避・削除してください
ln -s /path/to/claude-utils/skills ~/.claude/skills
```

各スキルは `skills/<スキル名>/SKILL.md` の構成で配置してください。

```
skills/
└── my-skill/
    └── SKILL.md
```

シンボリックリンク作成後、Claude Code が自動的にスキルを検出し、すべてのプロジェクトで利用可能になります。

### ユーティリティスクリプトをインストールする

`scripts/` 配下のユーティリティスクリプトを `/usr/local/bin` にインストールできます。

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