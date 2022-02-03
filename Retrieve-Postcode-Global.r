Global Post Codes
Open RStudio and use R to process the following R script:
Retrieve-Postcode-Global.r.
library(readr)
All_Countries <- read_delim("C:/VKHCG/03-Hillman/00-RawData/All_Countries.txt",
 "\t", col_names = FALSE,
 col_types = cols(
 X12 = col_skip(),
 X6 = col_skip(),
 X7 = col_skip(),
 X8 = col_skip(),
 X9 = col_skip()),
 na = "null", trim_ws = TRUE)
write.csv(All_Countries,
 file = "C:/VKHCG/03-Hillman/01-Retrieve/01-EDS/01-R/Retrieve_All_Countries.csv")
Output:
The program will successfully uploaded a new file named Retrieve_All_Countries.csv, after removing column
No. 6, 7, 8, 9 and 12 from All_Countries.txt