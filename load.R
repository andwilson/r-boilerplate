## clean workspace
rm(list=ls(all=TRUE))

## set root directory
root_dir <- ""

## set data directory
data_folder_name <- "Data"
data_dir <- str_c(root_dir, "/", data_folder_name)

#################
## load libraries

## data manipulation libraries
library(dplyr)
library(tidyr)
library(stringr)
#library(reshape2)
#library(car)

## i/o libraries 
library(readxl)

## visualization libraries
library(ggplot2)
library(ggthemes)
library(scales)
#library(lattice)
#library(GGally)
#library(treemapify)
#library(waterfall)
#library(vcd)
#library(gridExtra)

## calculation libraries
#library(FinCal)
#library(zoo)
#library(caTools)

##########################
## change default settings
options(stringsAsFactors = FALSE)

#############################
## import functions and data

## load user defined functions
functions_file_name <- "functions.R"
functions_path <- str_c(root_dir, "/", functions_file_name)
source(functions_path)

## set up data directories, files names, and paths
data_file_name <- ""
data_path <- str_c(data_dir, "/", file_name_p)

## import data from original WM Excel inputs
df <- read.csv(data_path)


###########################
## 'tidy' input data
# pull in 'tidy,' or normalized data has the following properties:
# Each variable forms a column
# Each observation forms a row
# Each type of observational unit forms a table



###########################
## declare global variables

#disable scientific notation
options(scipen=999)

## save the workspace for future loading via load() or attach()
workspace_path <- str_c(root_dir, "/rdata.RData")
save.image(file = workspace_path)
history_path <- str_c(root_dir, "/history.Rhistory")
savehistory(file = history_path)