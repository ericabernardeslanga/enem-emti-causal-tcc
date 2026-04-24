# TCC: Analise Causal com Dados do ENEM e do EMTI

> Projeto de pesquisa aplicada em ciência de dados com foco em inferência causal e avaliação de politicas publicas educacionais.

## Sobre o projeto

Este repositório organiza um projeto de conclusão de curso com foco em analise causal aplicada a dados públicos do ENEM e do Ensino Médio em Tempo Integral (EMTI), utilizando R.

O projeto busca integrar:

- fundamentação teórica em avaliação de politicas publicas e inferência causal;
- pratica aplicada com bases publicas educacionais;
- aplicação da linguagem R e uso do GitHub para reprodutibilidade;
- desenvolvimento de um projeto final com valor acadêmico e profissional.

## Pergunta central

Como a expansão ou participação no Ensino Médio em Tempo Integral se relaciona com resultados educacionais observados no ENEM, considerando estratégias de identificação causal e o uso de dados públicos?

## Objetivos do projeto

- organizar e documentar um pipeline de pesquisa reproduzível;
- integrar bases de dados relevantes para o problema;
- construir variáveis de tratamento, controles e desfechos;
- aplicar estratégias de analise causal apropriadas;
- produzir tabelas, gráficos e texto final para o TCC;
- manter um repositório apresentável no GitHub.

## Estrutura do repositório

```text
.
|-- README.md
|-- .gitignore
|-- enem-emti-causal.Rproj
|-- data/
|   |-- raw/
|   |-- external/
|   |-- interim/
|   |-- processed/
|   `-- README.md
|-- docs/
|   |-- project_scope.md
|   |-- research_design.md
|   `-- README.md
|-- references/
|   |-- bibliography.bib
|   `-- README.md
|-- R/
|   |-- utils_paths.R
|   |-- utils_checks.R
|   `-- README.md
|-- scripts/
|   |-- 00_setup.R
|   |-- 01_data_inventory.R
|   |-- 02_data_cleaning.R
|   |-- 03_build_panel.R
|   |-- 04_causal_analysis.R
|   |-- 05_outputs.R
|   `-- README.md
|-- notebooks/
|   |-- 01_exploratory_analysis.qmd
|   |-- 02_causal_strategy.qmd
|   `-- README.md
|-- reports/
|   |-- figures/
|   |-- tables/
|   `-- README.md
`-- tests/
    |-- testthat/
    |   `-- helper_placeholder.R
    `-- README.md
```

## Fluxo de trabalho

1. Mapear as bases disponíveis e documentar cobertura, nível de agregação e período.
2. Definir claramente o tratamento relacionado ao EMTI.
3. Construir a base analítica com regras transparentes de limpeza e integração.
4. Explorar o dado e verificar qualidade, missing e comparabilidade.
5. Aplicar a estratégia causal escolhida.
6. Produzir resultados para o TCC e para portfolio.

## Estratégias para analise

A estratégia analítica deste projeto foi estruturada de forma incremental, combinando fundamentos estatísticos, exploração de dados e métodos de inferência causal aplicados a dados educacionais, especialmente ENEM, Censo Escolar e bases complementares.

O desenvolvimento segue uma abordagem em etapas, evoluindo desde a compreensão dos dados ate a estimação de efeitos causais e a validação dos resultados.

### 1. Fundamentação estatística e exploração inicial

- revisão de estatística descritiva, incluindo media, variância e distribuição;
- simulações para compreensão de variabilidade e distribuição dos dados;
- analise exploratória inicial das bases do ENEM e do Censo Escolar;
- identificação de padrões, outliers e possíveis vieses.

### 2. Preparação e integração dos dados

- tratamento e padronização de bases publicas como ENEM, Censo Escolar, Atlas Brasil e IBGE;
- construção de um painel municipal ano;
- criação de variáveis de interesse, como indicador de adoção do EMTI;
- integração de variáveis socioeconômicas e educacionais.

### 3. Analise exploratória e visualização

- construção de gráficos com `ggplot2`;
- analise de tendencias temporais;
- comparações entre grupos, como municípios com e sem EMTI;
- avaliação preliminar de possíveis efeitos.

### 4. Estratégias de inferência causal

Para estimar o impacto do EMTI sobre resultados educacionais, o projeto considera as seguintes abordagens:

- Diferenças-em Diferenças (DiD): comparação da evolução dos indicadores entre grupos tratados e de controle ao longo do tempo.
- Estudo de eventos (Event Study): avaliação dinâmica do efeito do EMTI antes e depois da implementação.
- Propensity Score Matching (PSM): pareamento de unidades comparáveis para reduzir viés de seleção.
- Regressão com controles observáveis: inclusão de variáveis socioeconômicas e educacionais para ajuste dos modelos.
- Modelos com efeitos fixos: controle de heterogeneidade nao observada fixa no tempo, por município e por ano.

### 5. Validação e robustez

- testes de hipótese e analise de sensibilidade;
- verificação da hipótese de tendencias paralelas nos modelos DiD;
- testes placebo;
- comparação entre especificações alternativas.

Essa abordagem combinada busca aumentar a robustez das inferências, mitigar vieses de seleção e fortalecer a interpretação causal dos resultados.

## Ferramentas do projeto

- R
- tidyverse
- fixest
- MatchIt
- Quarto
- Git e GitHub

## Boas praticas para este repositório

- manter `data/raw/` apenas para dados originais sem edição manual;
- salvar scripts numerados na ordem do pipeline;
- separar funções reutilizáveis na pasta `R/`;
- registrar decisões metodológicas em `docs/`;
- gerar figuras e tabelas em `reports/`;
- evitar subir arquivos pesados ou sensíveis diretamente ao GitHub.

## Próximos passos

- preencher `docs/project_scope.md` com o recorte final do TCC;
- confirmar quais bases serão usadas além do ENEM e do EMTI;
- decidir a unidade de analise: aluno, escola, município ou estado;
- detalhar a estratégia causal principal em `docs/research_design.md`;
- iniciar o inventario dos dados no script `scripts/01_data_inventory.R`.



## Resultado esperado

Ao final, este repositório deve funcionar ao mesmo tempo como:

- base técnica e teórica;
- trilha documentada de aprendizado em analise causal;
- portfolio profissional em ciência de dados aplicada a educação;
- vitrine de um projeto completo de pesquisa com dados públicos.
