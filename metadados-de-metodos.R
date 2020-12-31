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

## ---- exemplo-dados-analiticos-perfil ----
knitr::include_graphics("img/exemplo-dados-analiticos-perfil.png")

## ---- mapeamento-de-variaveis ----
variavel <- c(
  "Horizonte: Símbolo",
  "Horizonte: Profundidade (cm)",
  "Frações da amostra total (g/kg): Calhaus > 20 (mm)",
  "Frações da amostra total (g/kg): Cascalho 20-2 (mm)",
  "Frações da amostra total (g/kg): Terra fina <2 (mm)",
  "Composição granulométrica da terra fina (g/kg): Areia grossa 2-0,2 (mm)",
  "Composição granulométrica da terra fina (g/kg): Areia fina 0,20-0,05 (mm)",
  "Composição granulométrica da terra fina (g/kg): Silte 0,05-0,002 (mm)",
  "Composição granulométrica da terra fina (g/kg): Argila < 0,002 (mm)",
  "Argila dispersa em água (g/kg)",
  "Grau de floculação (%)",
  "% Silte / % Argila"
)
caption <- "Mapeamento de variáveis: primeira etapa da compilação de metadado de métodos."
col.names <- c("Variável")
knitr::kable(
  x = cbind(variavel), caption = caption,
  col.names = col.names, align = "l", split.tables = Inf)

## ---- exemplo-dados-analiticos-perfil-radam ----
knitr::include_graphics("img/exemplo-dados-analiticos-perfil-radam.png")
