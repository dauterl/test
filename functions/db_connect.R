

db_connect <- function(dbname = 'development', host = 'localhost', port = '5432', user = 'postgres', password = NULL) {
	
	#Start local Server if not running
	system('pg_local_start', ignore.stderr = TRUE)

	# loads the PostgreSQL driver
	drv <- dbDriver("PostgreSQL")

	#Establish local connection
	con <- dbConnect(drv, 
		dbname = dbname,
        host = host,
        port = port,
        user = user,
        password = password
    )

    return(con)
                 	
	}