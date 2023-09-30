#CDC 2023
main_doc <- read.csv("/Users/prithviadiga/Desktop/cdc2023/cdc2023/Business_Dataset.csv", header = TRUE)
View(main_doc)

nrow(main_doc)
# 62747
ncol(main_doc)
# 15
names(main_doc)
console_names <- unique(main_doc$Console)

nostolgic_year_number <- substr(main_doc$Release.Date, nchar(main_doc$Release.Date) - 1, nchar(main_doc$Release.Date))
nostologic_year_filter <- c()
for(i in seq_along(nostolgic_year_number)){
  year <- as.numeric(nostolgic_year_number[i])
  if(year > 30 || year < 10){
    nostolgic_year_filter <- append(nostolgic_year_filter, year)
  }
}
