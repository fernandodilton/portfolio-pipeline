# Portfolio Pipeline

Skill do [Claude Code](https://claude.com/claude-code) que guia a criação (ou revisão) de uma peça de portfólio pessoal — **case study** ou **artigo** — do relato bruto até o texto final, com curadoria explícita no meio do caminho.

## O que ela faz

- Conduz uma entrevista, bloco por bloco, esperando sua resposta antes de seguir pra próxima pergunta.
- Organiza tudo num pipeline de arquivos: `00-narrativa.md` (relato cru) → `01-fundacao.md` (esqueleto denso, sem cortes) → `02-curadoria.md` (o que fica, o que sai, e por quê) → `03-redacao.md` (texto final).
- Também revisa/critica uma peça que você já escreveu, contra a mesma estrutura e as mesmas regras de qualidade — sem editar nada sozinha, só relatando pra você decidir.
- Funciona sozinha: na primeira vez que rodar num projeto, ela cria uma pasta `portfolio-pipeline/` ali, com o método completo. Depois disso, qualquer sessão de IA nesse projeto já sabe o que fazer, sem precisar reinstalar nada.
- Lê só o material do tipo em uso — case study e artigo têm estrutura e banco de perguntas próprios, guardados em arquivos separados, e só o necessário entra na conversa a cada vez.
- Pra case study, depois do texto fechado, monta um mockup visual básico (HTML, publicado como Artifact) — usando a estrutura do seu site de portfólio já existente, se você tiver um, ou um template padrão se não tiver.

## Instalar

Dentro da pasta do seu projeto (onde você já roda o Claude Code):

```bash
git clone https://github.com/fernandodilton/portfolio-pipeline .claude/skills/portfolio-pipeline
```

<details>
<summary>Prefere um comando só? Atalho com <code>curl | bash</code></summary>

```bash
curl -fsSL https://raw.githubusercontent.com/fernandodilton/portfolio-pipeline/main/install.sh | bash
```

Alguns assistentes de IA recusam rodar isso sem revisar o script antes (comportamento de segurança esperado, não é bug) — se acontecer, use o `git clone` acima.

</details>

O Claude Code só detecta skills novas no início da sessão, não em tempo real. Se ele já estava aberto neste projeto quando você instalou: **feche e abra de novo** (no terminal, saia e rode `claude` de novo; num editor com extensão, feche e reabra a janela/o editor). `/reload-plugins` existe, mas em teste real não pegou uma skill de projeto recém-instalada — não confie nele sozinho. Instalando **antes** de abrir o Claude Code no projeto, nem precisa de nada disso.

## Usar

No Claude Code, dentro do seu projeto:

```
/portfolio-pipeline
```

Na primeira vez, ela conversa com você pra entender se quer criar um case study ou artigo do zero, continuar um em andamento, ou revisar um que já existe — e vai criando a estrutura de pastas e arquivos conforme a conversa avança.

## Por que existe

Esse método nasceu de um processo real de recolocação profissional: transformar experiência de trabalho em material de portfólio que realmente vende — sem descrição vaga, sem processo enterrando o resultado, sem perder a voz de quem conta a história. Ver `portfolio-pipeline/regras.md` (gerado no seu projeto após o primeiro uso) para o método completo.
