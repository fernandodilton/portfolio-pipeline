#!/usr/bin/env bash
set -e

TARGET=".claude/skills/portfolio-pipeline"

if [ -d "$TARGET" ]; then
  echo "⚠️  $TARGET já existe. Pra atualizar, rode: git -C \"$TARGET\" pull"
  exit 1
fi

git clone --quiet https://github.com/fernandodilton/portfolio-pipeline "$TARGET"

echo "✅ Instalado em $TARGET."
echo "Se o Claude Code já estava aberto neste projeto: feche e abra de novo (no terminal, saia e rode 'claude' de novo; num editor com extensão, feche e reabra a janela/o editor). '/reload-plugins' nem sempre pega uma skill de projeto recém-instalada."
echo "Pra usar: digite /portfolio-pipeline no Claude Code, dentro deste projeto."
