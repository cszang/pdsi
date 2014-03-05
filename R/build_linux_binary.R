#' @export
build_linux_binary <- function() {
  source_path <- file.path(system.file(package = "pdsi"), "scpdsi.cpp")
  exec_path <- file.path(system.file(package = "pdsi"), "scpdsi.o")
  make_cmd <- paste("g++ -o", exec_path, source_path)
  system(make_cmd)
}