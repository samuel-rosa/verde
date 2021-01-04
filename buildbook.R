# Prepare working directory
renv::init()
install.packages(c("languageserver", "servr", "lintr", "pander"))
renv::snapshot()

# Build and serve book
bookdown::render_book("index.Rmd")
bookdown::serve_book()

# Move files to website repository
dir <- "~/projects/web/pedometria.org/static/livros/manual-de-gestao-de-dados-de-recursos-do-solo"
if (dir.exists(dir)) {
  cmd <- paste0("cp -a _book/. ", dir)
  system(cmd)
}
