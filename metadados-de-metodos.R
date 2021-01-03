## ---- tipos-de-dados ----
tipo <- c("Inteiro", "Real", "Texto", "Booleano", "Data", "Moeda")
descricao <- c(
  "Números positivos ou negativos sem casas decimais",
  "Números positivos ou negativos com casas decimais",
  "Uma cadeia de caracteres alfanuméricos e especiais",
  "Um valor verdadeiro (1) ou falso (0)",
  "Datas na representação aaaa-mm-dd",
  "Números com casas decimais representando moeda corrente"
)
exemplo <- c(
  "Número de subamostras coletadas, número de identificação de uma amostra",
  "Conteúdo de argila, Profundidade do solo, elevação acima do nível do mar",
  "Classificação taxonômica, descrição morfológica",
  "Presença/ausência de carbonatos, presença/ausência de cerosidade",
  "Data em que as amostras foram coletadas",
  "Valor monetário da terra, custo monetário de análise de uma amostra"
)
caption <- "Tipificação de dados de variáveis do solo."
col.names <- c("Tipo", "Descrição", "Exemplo")
knitr::kable(
  x = cbind(tipo, descricao, exemplo), caption = caption, col.names = col.names, align = "l",
  booktabs = TRUE)

## ---- laboratorio ----
tabela <- febr::dictionary(table = "metadado", variable = "lab")
caption <-
  "Campos usados na identificação de laboratórios responsáveis pela produção de dados do solo."
col.names <- c("Campo", "Nome", "Descrição")
knitr::kable(
  x = tabela[, c("campo_id", "campo_nome", "campo_descricao")], caption = caption,
  col.names = col.names, align = "l", split.tables = Inf)
