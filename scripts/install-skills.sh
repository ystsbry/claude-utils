#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
SKILLS_SRC="$SCRIPT_DIR/../skills"
SKILLS_DST="$HOME/.claude/skills"

mkdir -p "$SKILLS_DST"

for skill_dir in "$SKILLS_SRC"/*/; do
  skill_name="$(basename "$skill_dir")"
  target="$SKILLS_DST/$skill_name"
  if [ -L "$target" ]; then
    echo "Updating symlink: $target"
    rm "$target"
  elif [ -e "$target" ]; then
    echo "Skipping $skill_name: $target already exists (not a symlink)"
    continue
  fi
  ln -s "$skill_dir" "$target"
  echo "Linked: $target -> $skill_dir"
done

echo "Done. Installed skills:"
ls -l "$SKILLS_DST"
