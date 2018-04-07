#Group packages into bundles
my_packages <- c(
             "plyr"
             ,"dplyr" 
             ,"RPostgreSQL"
             ,"devtools"
             ,"reshape2"
             ,"base64enc"
             ,"lubridate"
             ,"jsonlite"
             ,"stats"
             ,"httr" 
             ,"tm"             
             ,"SnowballC"
             ,"text2vec"
             ,"randomForest"       
             ,"caret"
             ,"glmnet"
             ,"mfp"
            )



#my_github_packages <- c('bmschmidt/wordVectors', 'rstudio/tensorflow')

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
#sapply(my_packages, function(x) {
#    library(x, character.only = TRUE)
#})
#sapply(my_github_packages, function(x){devtools::install_github(x)})
#sapply(my_github_packages, function(x) {
#    library(x, character.only = TRUE)
#})

# source(paste('app/functions/', 'sourceDir.R', sep=''))
# sourceDir('app/functions/')
# connection <- local_db_conect('d7hms5v2sa89j')
# load_data(connection, schema = 'datasci_modeling')





