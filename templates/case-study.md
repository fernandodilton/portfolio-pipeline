# Tipo: Case Study

Material de venda direta: portfólio, processo seletivo.

## Estrutura (ponto de partida sugerido, não regra travada)

1. **Headline** — impacto, quase uma punchline. A frase que faz alguém parar de rolar a página.
2. **Asset** — imagem/tela que já entrega contexto visual (pode ficar pendente numa fase só-texto).
3. **Contexto** — quem vive o problema (o usuário), que situação ele enfrenta. Criar a cena antes de migrar pro ponto de vista corporativo.
4. **Problema/Business** — por que aquilo importava pro negócio. Ancorar num motivo real e específico, não genérico.
5. **Processo** — como se chegou na solução, quais decisões de design foram tomadas e por quê.
6. **Solução** — o que foi entregue, concretamente.
7. **Aprendizados** (opcional, recomendado) — poucos bullets, mostra self-awareness.
8. **Outcomes** — resultados, com número sempre que possível.

Quem estiver usando pode adaptar esses 8 blocos ao caso real — a estrutura é um esqueleto que já funcionou, não um contrato.

## Ordem de preenchimento na entrevista

Substância primeiro, gancho por último: Contexto → Problema/Business → Processo → Solução → Aprendizados → Outcomes → Headline → Asset. Headline é a punchline da história inteira — mais fácil de escrever bem depois de validar o resto.

## Perguntas por bloco

- **Contexto:** Quem vive o problema que essa peça resolve? É uma cena concreta (uma pessoa específica, uma situação real) ou ainda uma descrição abstrata da empresa/produto?
- **Problema/Business:** Por que esse problema importava pro negócio, especificamente — qual métrica ele afetava? Esse motivo é genuíno ou reconstruído depois dos fatos (tudo bem se for reconstruído, desde que plausível)? Havia urgência ou contexto de timing?
- **Processo:** Quais decisões de design específicas foram tomadas, e por que essa direção e não outra? Teve dúvida, discussão ou pivô no meio do caminho? Quem mais estava envolvido, e qual foi o papel específico de quem conta a história vs. o do time?
- **Solução:** O que foi entregue concretamente? Dá pra listar componentes/telas/fluxos específicos?
- **Aprendizados:** O que faria diferente hoje? O que essa experiência ensinou sobre tomada de decisão, não só sobre o produto?
- **Outcomes:** Que métrica de negócio isso impactou? Tem o número exato ou só a direção (subiu/desceu)? Se não tiver o número exato, dá pra reconstruir uma estimativa razoável?
- **Headline:** Qual é o impacto mais forte desse projeto, resumido numa frase? Com 5 segundos de atenção de quem contrata, o que diria primeiro? Essa frase vende o resultado ou só descreve o que foi feito?
- **Asset:** Qual tela/protótipo representa melhor esse projeto? Existe um antes/depois que vale mostrar?

## Regras de tom

- Contar como história, não como processo seco: criar a cena e quem vive o problema, dar um gatilho, só depois migrar pra perspectiva corporativa (como o trabalho foi orquestrado).
- Não explicar como se fosse pra um stakeholder interno da empresa. Quem está avaliando de fora não conhece o contexto interno, e a peça está vendendo o trabalho de quem a fez, não a empresa.
- Sem jargão de nomenclatura interna.
- Ancorar a decisão de design num motivo de negócio plausível, mesmo que a reconstrução da lógica venha depois dos fatos.
- Decisão coletiva relatada sem apontar culpado nem se esconder atrás do time: "a gente decidiu", não "eles decidiram" nem "eu sozinho decidi" quando não foi bem assim.

## Diretrizes de qualidade

Ver [`diretrizes-qualidade.md`](diretrizes-qualidade.md), nesta mesma pasta — consultar especialmente na curadoria (como critério de corte) e na revisão/crítica de uma peça pronta.

## Mockup visual (começa junto com a redação, não depois)

Perguntar isso assim que `03-redacao.md` começar — antes de escrever o primeiro bloco, não depois que os 8 já estiverem fechados. Ver o mockup preenchendo aos poucos, bloco a bloco, ajuda a avaliar hierarquia visual (o que aparece primeiro, se a Solução demora demais pra chegar) enquanto ainda dá pra ajustar fácil — esperar tudo pronto perde essa vantagem.

1. **Perguntar: "Você já tem um site de portfólio no ar?"**
   - **Se sim:** pedir um link de um case study já publicado nesse site. Usar a ferramenta de busca na web pra abrir o link e observar a estrutura real (cores, tipografia, layout de seções, ordem dos blocos). Montar o mockup HTML replicando esse estilo visual.
   - **Se não:** usar [`mockup-template.html`](mockup-template.html), nesta mesma pasta, como base.
2. **Avisar isso explicitamente nesse momento inicial** (não só quando mostrar o resultado): é uma visualização básica de estrutura, com blocos cinza no lugar de imagem real — não é o design final, é só pra avaliar se a ordem e o peso de cada bloco estão funcionando.
3. Publicar o mockup como Artifact desde a primeira versão, mesmo com a maioria dos blocos ainda vazios/placeholder.
4. **O mockup é derivado do `03-redacao.md`, nunca o contrário — o `.md` é a fonte da verdade.** Pra cada bloco, a ordem é sempre: (a) escrever o bloco em `03-redacao.md` no formato oficial (tag `🏷️`, split Bloco/Sheet) e esperar a aprovação da pessoa; só depois (b) copiar esse texto aprovado pra seção correspondente do mockup HTML e republicar o Artifact. Nunca pular o passo (a) e escrever só no HTML — se o `03-redacao.md` não existir ou estiver com menos blocos que o mockup, isso é o bug, não uma economia de passo.
