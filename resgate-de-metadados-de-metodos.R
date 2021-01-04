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
col.names <- c("Variável", "Método", "Unidade", "Laboratório")
knitr::kable(
  x = cbind(variavel, medoto = "", unidade = "", laboratorio = ""), caption = caption,
  col.names = col.names, align = "l", split.tables = Inf)

## ---- radam-perfil-06-tabelas-ipean ----
knitr::include_graphics("img/radam-perfil-06-tabelas-ipean.png")

## ---- mapeamento-de-variaveis-ces-ipean ----
variavel <- c(
  "Horizonte: Simb",
  "Horizonte: Prof cm",
  "Esqueleto % > 2 mm",
  "Amostra seca ao ar %: Calhau > 20 mm",
  "Amostra seca ao ar %: Cascalho 20-2 mm",
  "Comp Granulométrica % (tfsa): Areia 2-0,05 mm",
  "Comp Granulométrica % (tfsa): Areia grossa 2-0,2 mm",
  "Comp Granulométrica % (tfsa): Areia fina 0,2-0,05 mm",
  "Comp Granulométrica % (tfsa): Silte 0,05-0,002 mm",
  "Comp Granulométrica % (tfsa): Argila < 0,002 mm",
  "Argila natural %",
  "Grau de floc %",
  "Silte/Argila"
)
laboratorio <- c(
  "CES; IPEAN",
  "CES; IPEAN",
  "CES",
  "IPEAN",
  "IPEAN",
  "CES",
  "IPEAN",
  "IPEAN",
  "CES; IPEAN",
  "CES; IPEAN",
  "CES; IPEAN",
  "CES; IPEAN",
  "CES; IPEAN"
)
caption <- "Mapeamento de variáveis: identificação de variáveis e sua origem."
col.names <- c("Variável", "Método", "Unidade", "Laboratório")
knitr::kable(
  x = cbind(variavel, medodo = "", unidade = "", laboratorio), caption = caption,
  col.names = col.names, align = "l", split.tables = Inf)

## ---- descricao-de-metodos ----
metodo <- c(
  rep(
    paste0("Para a descrição dos perfis coletados, adotaram-se as normas e definições constantes ",
    "no 'Soil Survey Manual' e no 'Manual de Método de Trabalho de Campo' da Sociedade Brasileira ",
    "de Ciência do Solo."),
  2),
  rep(
    paste0("A preparação inicial da amostra no laboratório consiste em pô-la sobre um tabuleiro, ",
    "em lugar seco e ventilado, para torná-la seca ao ar. Depois é destorroada e peneirada, em ",
    "peneira de malha com furos circulares de 2 mm de diâmetro, obtendo-se, com isto, a separação ",
    "da TFSA (terra fina seca ao ar) das frações maiores que 2 mm (cascalhos 20-2 mm e calhaus > ",
    "20 mm)."),
  3),
  rep(
    paste0("Análise granulométrica - tem como finalidade separar as partículas de solo, menores ",
    "que 2 mm, dentro dos seguintes limites granulométricos: Areia Grossa (2 a 0,2 mm), Areia ",
    "Fina (0,2 a 0,05 mm), Silte (0,05 a 0,002 mm) e Argila (< 0,002 mm). É determinada por ",
    "sedimentação, pelo método internacional da pipeta, modificado, usando-se NaOH N como agente ",
    "de dispersão e agitador de alta rotação."),
  5),
  paste0("Argila natural (argila dispersa em água) - determinada por sedimentação, sendo usada ",
  "água destilada como agente de dispersão"),
  paste0("O grau de floculação é obtido pela fórmula: (argila total - argila natural) x 100 / ",
  "argila total.)"),
  "-"
)
caption <- "Identificação de métodos utilizados para produzir dados de variáveis do solo."
col.names <- c("Variável", "Método", "Unidade", "Laboratório")
knitr::kable(
  x = cbind(variavel, metodo, unidade = "", laboratorio), caption = caption,
  col.names = col.names, align = "l", split.tables = Inf)

## ---- metodos-unidade-de-medida ----
unidade <- c("-", "cm", rep("%", 10), "-")
variavel <- c(
  "Horizonte",
  "Profundidade",
  "Esqueleto",
  "Calhau",
  "Cascalho",
  "Areia",
  "Areia grossa",
  "Areia fina",
  "Silte",
  "Argila",
  "Argila natural",
  "Grau de floculação",
  "Silte/Argila"
)
caption <-
  "Nome da variável, método de determinação, unidade de medida e laboratório responsável."
col.names <- c("Variável", "Método", "Unidade", "Laboratório")
knitr::kable(
  x = cbind(variavel, metodo, unidade, laboratorio), caption = caption,
  col.names = col.names, align = "l", split.tables = Inf)
