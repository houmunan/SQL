install.packages("DBI")
library(DBI)
library(RPostgreSQL)

dbListTables(con)
dbListFields(con, "products")


??RPostgreSQL

test <- dbGetQuery(con, statement = paste(
  "select distinct category_name, cast(proof as integer)",
  "from products",
  "where cast(proof as integer) >= 85 and category_name is not null"
))

test
str(test)
?str

r3 <- dbGetQuery(con, statement = paste(
  "select case_cost",
  "from products"
  ))
head(r3)
