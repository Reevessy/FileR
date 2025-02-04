# Load R packages
lapply(c("tidyverse", "filesstrings", "readxl", "writexl"),
       require, character.only = TRUE)

# Set the folder containing current R script as working directory
setwd(".")

################################################################################

# read csv file
csv <- read.csv("./example.csv", header = TRUE, na.strings = c("","NA"))

# process data in R

# write csv file
write.table(csv, file = "./example_update.csv", sep = ",", row.names = FALSE)

################################################################################

# read tsv file
tsv <- read.table("./example.tsv", sep = "\t", header = TRUE, na.strings = c("","NA"))

# process data in R

# write tsv file
write.table(tsv, file = "./example_update.tsv", sep = "\t", row.names = FALSE)

################################################################################

# read txt file
txt <- readLines("./example.txt")

# process data in R

# write txt file
writeLines(txt, "./example_update.txt")

################################################################################

# read excel file
excel_sheet1 <- read_excel("./example.xlsx", sheet = "Test_1")
excel_sheet2 <- read_excel("./example.xlsx", sheet = "Test_2")
excel_sheet3 <- read_excel("./example.xlsx", sheet = "Test_3")

# process data in R

# write excel file
sheets <- list("Test_1_update" = excel_sheet1,
               "Test_2_update" = excel_sheet2,
               "Test_3_update" = excel_sheet3)
write_xlsx(sheets, path = "./example_update.xlsx")

################################################################################

# cleanup memory
rm(list = ls())
