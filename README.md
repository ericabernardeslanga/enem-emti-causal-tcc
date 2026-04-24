# TCC: Analise Causal com Dados do ENEM e do EMTI

> Projeto de pesquisa aplicada em ciencia de dados com foco em inferencia causal e avaliacao de politicas publicas educacionais.

## Sobre o projeto

Este repositorio organiza um projeto de conclusao de curso com foco em analise causal aplicada a dados publicos do ENEM e do Ensino Medio em Tempo Integral (EMTI), utilizando R.

O projeto busca integrar:

- fundamentacao teorica em avaliacao de politicas publicas e inferencia causal;
- pratica aplicada com bases publicas educacionais;
- aplicacao da linguagem R e uso do GitHub para reproducibilidade;
- desenvolvimento de um projeto final com valor academico e profissional.

## Pergunta central

Como a expansao ou participacao no Ensino Medio em Tempo Integral se relaciona com resultados educacionais observados no ENEM, considerando estrategias de identificacao causal e o uso de dados publicos?

## Objetivos do projeto

- organizar e documentar um pipeline de pesquisa reproduzivel;
- integrar bases de dados relevantes para o problema;
- construir variaveis de tratamento, controles e desfechos;
- aplicar estrategias de analise causal apropriadas;
- produzir tabelas, graficos e texto final para o TCC;
- manter um repositorio apresentavel no GitHub.

## Estrutura do repositorio

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

1. Mapear as bases disponiveis e documentar cobertura, nivel de agregacao e periodo.
2. Definir claramente o tratamento relacionado ao EMTI.
3. Construir a base analitica com regras transparentes de limpeza e integracao.
4. Explorar o dado e verificar qualidade, missing e comparabilidade.
5. Aplicar a estrategia causal escolhida.
6. Produzir resultados para o TCC e para portfolio.

## Estrategias para analise

A estrategia analitica deste projeto foi estruturada de forma incremental, combinando fundamentos estatisticos, exploracao de dados e metodos de inferencia causal aplicados a dados educacionais, especialmente ENEM, Censo Escolar e bases complementares.

O desenvolvimento segue uma abordagem em etapas, evoluindo desde a compreensao dos dados ate a estimacao de efeitos causais e a validacao dos resultados.

### 1. Fundamentacao estatistica e exploracao inicial

- revisao de estatistica descritiva, incluindo media, variancia e distribuicao;
- simulacoes para compreensao de variabilidade e distribuicao dos dados;
- analise exploratoria inicial das bases do ENEM e do Censo Escolar;
- identificacao de padroes, outliers e possiveis vieses.

### 2. Preparacao e integracao dos dados

- tratamento e padronizacao de bases publicas como ENEM, Censo Escolar, Atlas Brasil e IBGE;
- construcao de um painel municipal-ano;
- criacao de variaveis de interesse, como indicador de adocao do EMTI;
- integracao de variaveis socioeconomicas e educacionais.

### 3. Analise exploratoria e visualizacao

- construcao de graficos com `ggplot2`;
- analise de tendencias temporais;
- comparacoes entre grupos, como municipios com e sem EMTI;
- avaliacao preliminar de possiveis efeitos.

### 4. Estrategias de inferencia causal

Para estimar o impacto do EMTI sobre resultados educacionais, o projeto considera as seguintes abordagens:

- Diferencas-em-Diferencas (DiD): comparacao da evolucao dos indicadores entre grupos tratados e de controle ao longo do tempo.
- Estudo de eventos (Event Study): avaliacao dinamica do efeito do EMTI antes e depois da implementacao.
- Propensity Score Matching (PSM): pareamento de unidades comparaveis para reduzir vies de selecao.
- Regressao com controles observaveis: inclusao de variaveis socioeconomicas e educacionais para ajuste dos modelos.
- Modelos com efeitos fixos: controle de heterogeneidade nao observada fixa no tempo, por municipio e por ano.

### 5. Validacao e robustez

- testes de hipotese e analise de sensibilidade;
- verificacao da hipotese de tendencias paralelas nos modelos DiD;
- testes placebo;
- comparacao entre especificacoes alternativas.

Essa abordagem combinada busca aumentar a robustez das inferencias, mitigar vieses de selecao e fortalecer a interpretacao causal dos resultados.

## Ferramentas do projeto

- R
- tidyverse
- fixest
- MatchIt
- Quarto
- Git e GitHub

## Boas praticas para este repositorio

- manter `data/raw/` apenas para dados originais sem edicao manual;
- salvar scripts numerados na ordem do pipeline;
- separar funcoes reutilizaveis na pasta `R/`;
- registrar decisoes metodologicas em `docs/`;
- gerar figuras e tabelas em `reports/`;
- evitar subir arquivos pesados ou sensiveis diretamente ao GitHub.

## Proximos passos

- preencher `docs/project_scope.md` com o recorte final do TCC;
- confirmar quais bases serao usadas alem do ENEM e do EMTI;
- decidir a unidade de analise: aluno, escola, municipio ou estado;
- detalhar a estrategia causal principal em `docs/research_design.md`;
- iniciar o inventario dos dados no script `scripts/01_data_inventory.R`.

## Como iniciar no GitHub

Usuario GitHub:

```text
ericabernardeslanga
```

Nome sugerido para o repositorio:

```text
enem-emti-causal-tcc
```

URL esperada:

```text
https://github.com/ericabernardeslanga/enem-emti-causal-tcc
```

Comandos para publicar:

```powershell
git init
git add .
git commit -m "chore: estrutura inicial do projeto de TCC"
git branch -M main
git remote add origin https://github.com/ericabernardeslanga/enem-emti-causal-tcc.git
git push -u origin main
```

## Resultado esperado

Ao final, este repositorio deve funcionar ao mesmo tempo como:

- base tecnica e teorica;
- trilha documentada de aprendizado em analise causal;
- portfolio profissional em ciencia de dados aplicada a educacao;
- vitrine de um projeto completo de pesquisa com dados publicos.
