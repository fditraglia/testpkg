data_url <- "http://ditraglia.com/econ103/survey_clean.csv"
survey <- read.csv(data_url, stringsAsFactors = FALSE, header = TRUE,
                   row.names = NULL)
height_handspan <- survey[,c('height', 'handspan')]
devtools::use_data(height_handspan)
