## ---- taxon-campo-id ----
tabela <- febr::dictionary(table = "observacao", variable = "taxon")
caption <-
  "Campos usados na identificação de laboratórios responsáveis pela produção de dados do solo."
col.names <- c("Campo", "Nome", "Descrição")
knitr::kable(
  x = tabela[, c("campo_id", "campo_nome", "campo_descricao")], caption = caption,
  col.names = col.names, align = "l", split.tables = Inf)
