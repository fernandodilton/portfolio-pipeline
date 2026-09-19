#!/usr/bin/env bash
set -e

TARGET=".claude/skills/portfolio-pipeline"

if [ -d "$TARGET" ]; then
  echo "⚠️  $TARGET já existe. Pra atualizar, rode: git -C \"$TARGET\" pull"
  exit 1
fi

git clone --quiet https://github.com/fernandodilton/portfolio-pipeline "$TARGET"

cat "$TARGET/POST_INSTALL.txt"
