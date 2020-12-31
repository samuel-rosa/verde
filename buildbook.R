# Prepare working directory
renv::init()
install.packages(c("languageserver", "servr", "lintr", "pander", "DiagrammeR"))
renv::snapshot()

# Build and serve book
bookdown::render_book("index.Rmd")
bookdown::serve_book()
# rmarkdown::render_site(encoding = 'UTF-8')


# Move files to website repository
dir <- "~/projects/web/pedometria.org/static/livros/manual-de-gestao-de-dados-de-recursos-do-solo"
if (dir.exists(dir)) {
  cmd <- paste0("cp -a _book/. ", dir)
  system(cmd)
}
