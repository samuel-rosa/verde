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

## ---- etapas-da-compilacao-de-metadados-de-metodos ----
DiagrammeR::mermaid("
  graph LR
  A(Trabalho</br>de pesquisa) --> B(Mapeamento</br>de variáveis)
  A --> C(Unidades</br>de medida)
  A --> D(Métodos de</br>determinação)
  B --> E(Dados</br>compilados)
  C --> E
  D --> E
  F(Especialista) --> E
  E --> G(Metadados</br>de métodos)
")

## ---- radam-perfil-49-tabelas-ces ----
knitr::include_graphics("img/radam-perfil-49-tabelas-ces.png")

## ---- mapeamento-de-variaveis-ces ----
variavel <- c(
  "Horizonte: Simb",
  "Horizonte: Prof cm",
  "Esqueleto % > 2 mm",
  "Comp Granulométrica % (tfsa): Areia 2-0,05 mm",
  "Comp Granulométrica % (tfsa): Silte 0,05-0,002 mm",
  "Comp Granulométrica % (tfsa): Argila < 0,002 mm",
  "Argila natural %",
  "Grau de floc %",
  "Silte/Argila"
)
caption <-
  "Mapeamento de variáveis: identificação de variáveis, relações entre elas e unidades de medida."
col.names <- c("Variável")
knitr::kable(
  x = cbind(variavel), caption = caption,
  col.names = col.names, align = "l", split.tables = Inf)

## ---- radam-perfil-06-tabelas-ipean ----
knitr::include_graphics("img/radam-perfil-06-tabelas-ipean.png")

## ---- mapeamento-de-variaveis-ces-ipean ----
variavel <- c(
  "Horizonte: Simb",
  "Horizonte: Prof cm",
  "CES: Esqueleto % > 2 mm",
  "IPEAN: Amostra seca ao ar %: Calhau > 20 mm",
  "IPEAN: Amostra seca ao ar %: Cascalho 20-2 mm",
  "CES: Comp Granulométrica % (tfsa): Areia 2-0,05 mm",
  "IPEAN: Comp Granulométrica % (tfsa): Areia grossa 2-0,2 mm",
  "IPEAN: Comp Granulométrica % (tfsa): Areia fina 0,2-0,05 mm",
  "Comp Granulométrica % (tfsa): Silte 0,05-0,002 mm",
  "Comp Granulométrica % (tfsa): Argila < 0,002 mm",
  "Argila natural %",
  "Grau de floc %",
  "Silte/Argila"
)
caption <- "Mapeamento de variáveis: identificação de variáveis e sua origem."
col.names <- c("Variável")
knitr::kable(
  x = cbind(variavel), caption = caption,
  col.names = col.names, align = "l", split.tables = Inf)