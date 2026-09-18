# Portfolio Pipeline — Método

Este arquivo é a fonte da verdade deste workspace para criar e revisar peças de portfólio pessoal. Foi gerado automaticamente na primeira vez que a skill `portfolio-pipeline` rodou aqui. Qualquer sessão de IA que abrir um dos arquivos descritos abaixo deve seguir o que está escrito aqui, sem precisar da skill original.

Edite este arquivo livremente conforme o método for sendo ajustado — ele pertence a este workspace, não à skill.

Este é o **núcleo**, comum a qualquer tipo de peça. A estrutura, o banco de perguntas e o tom específicos de cada tipo vivem em arquivo próprio — ler só o do tipo que estiver em uso no momento, não os dois de uma vez:

- **Case study** → [`case-study.md`](case-study.md) (+ [`diretrizes-qualidade.md`](diretrizes-qualidade.md) na curadoria/crítica)
- **Artigo** → [`artigo.md`](artigo.md)

---

## O pipeline

Toda peça é construída em arquivos sequenciais, cada um com uma responsabilidade única. Nunca pular etapa, nunca escrever prosa final antes da curadoria estar aprovada.

### `00-narrativa.md` — relato bruto

Registro cru e cronológico de tudo que o autor conta, nas próprias palavras dele (near-verbatim), sem filtro.

- **Nunca organizar por bloco aqui — isso é trabalho da fundação.** A narrativa é o registro cru, na ordem em que a conversa realmente aconteceu, não pré-organizado no esqueleto do tipo de peça. O banco de perguntas do arquivo de tipo (`case-study.md`/`artigo.md`) serve só de guia interno de que perguntar em seguida quando o relato livre deixar buraco — não deve virar cabeçalho visível nem ser anunciado como "Bloco: Contexto" pra pessoa. Perguntar de forma natural (ex: "quem sentia esse problema, na prática?"), sem nomear a etiqueta do método.
- **Primeiro passo, antes de qualquer pergunta guiada:** pedir um relato livre e solto sobre o projeto — "conta o que vier à cabeça, sem se preocupar com ordem ou estrutura, eu organizo depois". Registrar isso primeiro. Só depois fazer perguntas de acompanhamento pra cobrir o que ficou faltando (usando o banco do tipo como checklist interno) — não repetir pergunta sobre algo que a pessoa já contou sozinha.
- Nunca apagar ou reescrever entradas antigas — só acumular novas por baixo, em ordem cronológica.
- Cada entrada tem uma data e um resumo curto do **assunto tratado na conversa** (`## AAAA-MM-DD · resumo curto do assunto`) — o resumo descreve o que foi dito, não o nome de um bloco do método (ex: "detalhe sobre quem usava o produto" está certo, "Contexto" não). Também leva uma linha de contexto (de onde veio: conversa, transcrição, export externo).
- Falas do autor entram como citação em bloco (`>`), o mais próximo possível do que ele disse.
- Perguntas sem resposta na sessão entram como "Ainda em aberto" no fim da entrada.
- Se o material já vem de uma fonte externa robusta, não duplicar tudo: linkar a fonte e registrar só o que for dito diretamente na conversa de construção (correções, detalhes novos, decisões).

### `01-fundacao.md` — esqueleto denso, sem cortes

A narrativa organizada na estrutura do arquivo de tipo (ver topo deste arquivo), preservando toda nuance. Ainda não é prosa final — é estrutura densa, o mais completa possível.

- **Perguntar antes de escrever, nunca decidir sozinho como construir.** Antes de organizar a narrativa nos blocos, perguntar como a pessoa quer acompanhar: bloco por bloco, confirmando cada um antes de seguir pro próximo, ou tudo de uma vez, num rascunho completo pra revisar e ajustar depois. As duas formas são válidas — o que não pode acontecer é escrever a fundação inteira e só depois perguntar "ficou bom?", como se a decisão de como construir já estivesse tomada. Isso vale mesmo quando dá pra sugerir uma organização inteira de uma vez (é tentador com o esqueleto de 8 blocos do case study já pronto) — sugerir a organização não é a mesma coisa que decidir sozinho o ritmo de construção.
- **Preservação obsessiva:** nunca remover nuance, história paralela ou detalhe sem uso óbvio ainda. Cortar é trabalho da curadoria, não da fundação.
- Marcar pendências com `> ⚠️ **PENDENTE:** texto da pendência` — qualquer coisa ainda não fechada (falta número, falta decidir, falta confirmar).
- Marcar onde uma imagem vai entrar, mesmo sem produzi-la ainda: `> 🖼️ **IMAGEM:** descrição do que a imagem deve mostrar`, no ponto do texto onde ela pede respiro visual.
- Quando o autor usa um termo leigo que vale a pena adaptar pra um termo técnico mais preciso, registrar a troca e o motivo, não trocar em silêncio.
- Se a fundação estiver crescendo densa demais pra uma peça só, sugerir dividir — mas nunca fragmentar sem aprovação explícita do autor.

### `02-curadoria.md` — decisão do que fica

Decide, bloco por bloco, o que sobrevive da fundação, o que é cortado, e por quê. Não tem prosa final aqui, é plano acordado antes de escrever qualquer texto.

- Documentar cortes evita que voltem na redação por engano.
- Cada bloco tem função narrativa explícita — um bloco sem função clara é um bloco que talvez não precise existir.
- O autor aprova explicitamente antes de qualquer bloco seguir pra redação.

### `03-redacao.md` — prosa final

O texto de verdade, bloco por bloco, seguindo a curadoria aprovada, com feedback do autor a cada bloco antes de avançar pro próximo.

- **Estrutura do arquivo:** antes do separador `---`, só a nota de processo (de onde veio o conteúdo, o que falta) — não faz parte da peça em si. Depois do separador, o título e os blocos na ordem em que apareceriam na versão final.
- Cada bloco é identificado por uma tag em texto normal, maiúscula, em negrito, com o emoji 🏷️ na frente, sozinha na linha: `🏷️ **NOME DO BLOCO**`. O nome de cada tag segue o rótulo que apareceria de verdade pro leitor (ex: "Resultado", não "Outcomes" se a peça for em português).
- **Bloco vs. sheet:** quando a peça tiver conteúdo denso demais pra competir por atenção na leitura corrida, mas que ainda vale preservar, dividir a tag em duas partes:

  ```
  🏷️ **NOME DO BLOCO**

  **Bloco:**
  [texto sempre visível]

  **Sheet:**
  [texto do "mais contexto", só se esse bloco tiver um]
  ```

  Blocos sem sheet só têm `**Bloco:**`. Isso não precisa ser resumo/detalhe do mesmo texto — os dois podem ter propósitos diferentes.
- Separador visual entre blocos: uma linha com só um `.` (ponto), com linha em branco antes e depois. Serve porque preview de Markdown colapsa sequências de linhas em branco na mesma distância de uma única linha — o `.` é conteúdo de verdade, então não colapsa.

---

## Convenção de pasta

`portfolio-pipeline/{tipo}/{ano}/{mes-nome}/{slug-da-peça}/`, com `{tipo}` sendo `case-studies` ou `artigos`, e `{mes-nome}` no formato `MM-nome` (ex: `07-julho`). Data usada é o início do projeto/peça, ou lançamento quando não há data de início registrada. Se a data não for clara ainda, perguntar antes de criar a pasta.

Cada pasta de peça tem um `README.md` com os campos:

```md
# Nome da Peça

**Status:** [em que estágio do pipeline está, resumido em uma frase]
**Tipo:** [Case study / Artigo]

## Sobre o que é
[resumo em 2-3 frases]

## Por que essa peça
[por que vale a pena produzir — força do resultado, ângulo, o que ela mostra sobre quem a fez]

## Arquivos
Pipeline de arquivos: `00-narrativa.md` → `01-fundacao.md` → `02-curadoria.md` → `03-redacao.md`[ → `04-distribuicao.md`, se for artigo]

## Fontes
[links, exports, onde o material original está]

## Pendências
[lista do que falta fechar]
```

Atualizar o Status a cada transição de estágio do pipeline.

---

## Regras de prosa e formatação

- **Sem travessão (—)** em texto final — usar vírgula, ponto ou parênteses.
- **Parágrafos curtos**: quebrar a cada frase ou ideia nova, 3-4 linhas no máximo. Texto mobile é escaneado, não lido linha a linha.
- **Ponto final como aliado**: frases curtas. Mais de duas vírgulas na mesma frase é sinal de dividir.
- **Negrito cirúrgico**: nunca frase inteira em negrito, só a palavra-chave central (no máximo 3 palavras por destaque).
- **Evitar o reframe "não é sobre X, é sobre Y"** (e variações "não fiz X, fiz Y") como gancho ou fechamento — é um tique de escrita genérica. Usar a afirmação positiva direto.
- **Sem clichê de fechamento**: proibido "em resumo", "para concluir", "em suma", "por fim", "a conclusão é que". Terminar com uma ideia humana, não um resumo do que já foi dito.
- **Preservar a voz de quem está contando**: ao refinar a fundação em cima da narrativa bruta, manter as palavras e o tom do autor. Não reescrever com vocabulário genérico de IA.

---

## Modos desta skill

### Criar do zero ou continuar

1. Resolver a pasta pela convenção acima. Se a data não estiver clara, perguntar antes de criar.
2. Detectar o estágio olhando quais arquivos já existem e o Status do README — nunca reabrir um estágio já aprovado pelo autor.
3. Ler só o arquivo do tipo em uso (`case-study.md` ou `artigo.md`, ver topo deste arquivo) e rodar a entrevista de lá, uma pergunta de cada vez, esperando resposta antes de seguir.
4. Nunca pular etapa nem escrever prosa final sem a curadoria aprovada.

### Revisar/criticar uma peça existente

1. Ler todo o pipeline disponível daquela peça.
2. Avaliar contra: a estrutura e o tom do arquivo do tipo correspondente (+ `diretrizes-qualidade.md` se for case study), a formatação (tags, bloco/sheet, pendência/imagem, separador), e as regras gerais de prosa deste arquivo.
3. Reportar em lista, por bloco, achados concretos e acionáveis — citando o trecho, não elogio genérico.
4. Nunca editar sozinho. A skill fomenta o pensamento; a decisão final é de quem está usando.
