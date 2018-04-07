#Group packages into bundles
my_packages <- c(
             "Rserve"
             , "RSclient"
            )

install_if_missing = function(p) {
  if (p %in% rownames(installed.packages()) == FALSE) {
    cat(paste("Installing package:", p, "\n"))
    install.packages(p)
  }
  else {
    cat(paste("Skipping already installed package:", p, "\n"))
  }
}

# TODO add invisible to both vvvvvv
sapply(my_packages, install_if_missing)





