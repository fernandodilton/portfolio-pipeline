---
name: portfolio-pipeline
description: Guia qualquer pessoa a criar (do zero ou continuando) ou revisar/criticar uma peça de portfólio pessoal — case study ou artigo — usando um pipeline de 4 arquivos (narrativa bruta → fundação → curadoria → redação final), com entrevista bloco a bloco. Funciona sozinha em qualquer workspace, sem depender de configuração prévia do projeto. Use quando alguém quiser começar, continuar ou avaliar um case study ou artigo pro próprio portfólio.
---

# Portfolio Pipeline

Ajuda qualquer pessoa a transformar um relato bruto sobre um projeto (ou tema) em uma peça de portfólio pronta — case study ou artigo — passando por fundação e curadoria explícitas antes de qualquer prosa final. Autossuficiente: não depende de nenhum `CLAUDE.md` ou regra já existente no workspace. Lê só o material do tipo em uso a cada momento (ver Passo 1) — não carrega case study e artigo ao mesmo tempo.

**Idioma: seguir o contexto, nunca assumir inglês por padrão.**

1. Se a pessoa já escreveu algo em linguagem natural nesta conversa (qualquer mensagem, mesmo antes da skill ser chamada), responder no idioma dela.
2. Se não houver nenhum sinal de idioma ainda (ex: a pessoa só rodou o comando de instalação, sem escrever nada), checar o idioma do sistema antes de responder — rodar `echo $LANG` (ou `locale` se aquilo vier vazio) e usar o idioma que aparecer (ex: `pt_BR.UTF-8` → português; `en_US.UTF-8` → inglês).
3. Método, perguntas e arquivos gerados seguem esse mesmo idioma. Se a pessoa trocar de idioma no meio da conversa, seguir a troca.

## Quem está do outro lado

Quem chama essa skill pode nunca ter ouvido falar de "pipeline de narrativa", "curadoria" ou "fundação" antes — não assumir familiaridade com o método. Isso muda como agir, não só o que fazer: antes de criar uma pasta, um arquivo ou fazer uma pergunta que pressupõe conhecer o processo, explicar em 1-2 frases simples, no idioma da conversa (ver "Idioma" acima), o que está acontecendo e por quê (ex: "vou guardar o método numa pasta própria, assim qualquer conversa futura aqui já sabe o que fazer sem precisar de mim de novo"). Isso vale ao longo de toda a conversa, não só no início — o objetivo é que a pessoa nunca se sinta perdida sobre o que a skill está fazendo ou por quê.

## Passo 1 — Garantir que o método existe neste workspace

1. Verificar se já existe `portfolio-pipeline/regras.md` na raiz do workspace atual.
2. Verificar também se o workspace já tem algum método equivalente por outro nome (ex: uma pasta `regras/` ou instruções de pipeline já documentadas em outro lugar, tipo `CLAUDE.md`). Criar um segundo método do zero quando já existe um duplica trabalho e pode confundir qual das duas fontes vale — nesse caso, explicar a duplicação em potencial e perguntar se a pessoa prefere usar o que já existe ou mesmo assim criar o novo.
3. **Se não existir nada equivalente:**
   - Antes de criar, explicar rapidamente o que vai acontecer (ver "Quem está do outro lado").
   - Criar a pasta `portfolio-pipeline/` na raiz do workspace.
   - Copiar todo o conteúdo de `templates/` (deste pacote da skill) para dentro dela: `regras.md`, `case-study.md`, `artigo.md`, `diretrizes-qualidade.md`, `mockup-template.html`. Copiar tudo agora é só disco, não custa contexto — cada um só entra na conversa quando for realmente lido (ver Passo 3). Os arquivos-fonte estão em português; **se o idioma detectado (ver "Idioma" acima) não for português, traduzir o conteúdo pro idioma detectado ao copiar** — preservando estrutura, tags (`🏷️`), marcadores (`⚠️ PENDENTE`, `🖼️ IMAGEM`) e nomes de arquivo exatamente como estão, só o texto em prosa muda de idioma.
   - Se já existir um `CLAUDE.md` na raiz do workspace, acrescentar uma seção curta nele referenciando `portfolio-pipeline/regras.md` (sem reescrever ou remover o resto do arquivo).
   - Se não existir `CLAUDE.md`, criar um novo só com essa referência.
4. **Se `portfolio-pipeline/regras.md` já existir:** não sobrescrever. Esses arquivos já são o método vivo deste workspace — podem ter sido editados por quem usa.
5. Ler `portfolio-pipeline/regras.md` (só o núcleo, não os arquivos de tipo ainda) antes de seguir. Ele é a fonte da verdade a partir daqui — esta skill só orquestra o primeiro passo e a entrevista; toda regra de estrutura, tom e formatação de cada tipo mora nos arquivos que ele aponta.

## Passo 2 — Descobrir o que a pessoa quer

Inferir do que ela já disse; perguntar só o que não estiver claro:

- **Tipo de peça:** case study ou artigo?
- **Ação:** criar do zero, continuar uma em andamento, ou revisar/criticar uma pronta?
- **Se for criar/continuar:** qual projeto ou tema é, e se já existe uma pasta pra ele.

Nunca assumir sem sinal claro — errar aqui desperdiça a entrevista inteira.

## Passo 3A — Criar do zero ou continuar

1. Resolver a pasta de destino pela convenção descrita em `portfolio-pipeline/regras.md` ("Convenção de pasta"). Se a data do projeto não estiver clara, perguntar antes de criar qualquer coisa.
2. Detectar o estágio atual: olhar quais dos arquivos do pipeline já existem nessa pasta e o campo Status do `README.md`. Retomar dali — nunca reabrir um estágio que a pessoa já aprovou.
3. Se for 100% novo: criar a pasta com `README.md` (campos descritos em `portfolio-pipeline/regras.md`) e `00-narrativa.md` vazio.
4. Ler **só** `portfolio-pipeline/case-study.md` ou `portfolio-pipeline/artigo.md` (o do tipo escolhido no Passo 2, nunca os dois) — mas só como guia interno de que perguntar, nunca expor o nome do bloco pra pessoa. Na `00-narrativa.md`, começar pedindo um relato livre (ver `regras.md`, seção `00-narrativa.md`) antes de qualquer pergunta guiada. Depois, fazer perguntas de acompanhamento naturais (sem anunciar "Bloco: Contexto" ou similar) só pra fechar o que ficou faltando, uma de cada vez, esperando resposta antes de seguir. Registrar cada resposta com um resumo do assunto tratado, não com o nome do bloco.
5. Avançar arquivo por arquivo (`00-narrativa.md` → `01-fundacao.md` → `02-curadoria.md` → `03-redacao.md`, e `04-distribuicao.md` se for artigo), sem pular etapa e sem escrever prosa final sem curadoria aprovada.
6. **Se for case study, assim que `03-redacao.md` começar** (antes do primeiro bloco, não depois dos 8 fechados): seguir a etapa de mockup visual descrita em `case-study.md` — perguntar sobre site existente, publicar o Artifact desde a primeira versão, e ir preenchendo/republicando conforme cada bloco da redação for aprovado.
7. Atualizar o Status do `README.md` a cada transição de estágio.

## Passo 3B — Revisar/criticar uma peça existente

1. Identificar o arquivo ou pasta alvo — perguntar se estiver ambíguo.
2. Ler todo o pipeline disponível daquela peça (README + os arquivos que existirem) pra confirmar o tipo, se não estava claro.
3. Avaliar contra `portfolio-pipeline/regras.md` + **só** o arquivo do tipo correspondente (`case-study.md`, também lendo `diretrizes-qualidade.md`; ou `artigo.md`): estrutura, formatação (tags, bloco/sheet, pendência/imagem, separador), regras de tom, regras gerais de prosa.
4. Reportar em **lista**, por bloco, achados concretos e acionáveis, citando o trecho — nunca elogio genérico nem crítica vaga.
5. **Nunca editar sozinho.** Discutir os achados primeiro; aplicar só o que a pessoa aprovar.

## Princípio geral

Em qualquer modo, a skill pergunta e sugere um caminho — a decisão final (estrutura de blocos, cortes, textos, se algo fica ou sai) é sempre de quem está usando. As estruturas descritas em `case-study.md` e `artigo.md` são pontos de partida, não regras travadas. E como em "Quem está do outro lado": qualquer pergunta ou ação que dependa de conhecer o método merece uma frase de contexto antes, não só a pergunta seca.
