# TCC: Analise Causal com Dados do ENEM e do EMTI

Este repositorio organiza um projeto de conclusao de curso com foco em analise causal aplicada a dados publicos do ENEM e do Ensino Medio em Tempo Integral (EMTI), utilizando R.

O objetivo e combinar:

- fundamentacao teorica em avaliacao de politicas publicas e inferencia causal;
- pratica aplicada com bases publicas educacionais;
- reproducibilidade tecnica em R e GitHub;
- producao de um trabalho final com valor academico e profissional.

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

## Fluxo de trabalho sugerido

1. Mapear as bases disponiveis e documentar cobertura, nivel de agregacao e periodo.
2. Definir claramente o tratamento relacionado ao EMTI.
3. Construir a base analitica com regras transparentes de limpeza e integracao.
4. Explorar o dado e verificar qualidade, missing e comparabilidade.
5. Aplicar a estrategia causal escolhida.
6. Produzir resultados para o TCC e materiais para portfolio.

## Estrategias causais possiveis

As escolhas finais dependem da disponibilidade e da qualidade dos dados, mas este projeto ja esta preparado para acomodar:

- diferencas-em-diferencas;
- estudo de eventos;
- propensity score matching;
- controle por efeitos fixos;
- regressao com controles observaveis;
- analises de robustez e placebo.

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

Depois de revisar a estrutura local, voce pode:

```powershell
git init
git add .
git commit -m "chore: estrutura inicial do projeto de TCC"
```

Sugestao de nome para o repositorio:

```text
enem-emti-causal-tcc
```

Se quiser publicar no GitHub com seu usuario `ericabernardeslanga`:

```powershell
gh repo create enem-emti-causal-tcc --public --source=. --remote=origin
git branch -M main
git push -u origin main
```

URL esperada do repositorio:

```text
https://github.com/ericabernardeslanga/enem-emti-causal-tcc
```

## Resultado esperado

Ao final, este repositorio deve funcionar ao mesmo tempo como:

- base tecnica do TCC;
- trilha documentada de aprendizado em analise causal;
- portfolio profissional em ciencia de dados aplicada a educacao.
