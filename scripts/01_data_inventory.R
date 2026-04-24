# Objetivo:
# mapear as bases candidatas, sua cobertura, granularidade e variaveis principais.

inventory <- tibble::tibble(
  base = c("ENEM", "Censo Escolar", "Base EMTI"),
  unidade = c("Aluno", "Escola", "Escola ou rede"),
  periodo = c("Preencher", "Preencher", "Preencher"),
  chave_integracao = c("Preencher", "Codigo da escola", "Preencher"),
  observacoes = c("Microdados", "Base estrutural", "Definir fonte oficial")
)

print(inventory)
