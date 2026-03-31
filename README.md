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