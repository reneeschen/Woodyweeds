##Data manip
##Read data
library(xlsx)
filename <- "C:/Users/Purity/Dropbox/WW_SESYNC/data/Soil_data_Baringo/SOC_ALL_results_276_Final_252.xlsx"
Th_SOC<-read.xlsx(filename,sheetName = "Theo_KEFRI")
Pur_SOC<-read.xlsx(filename,sheetName = "Purity")

#Table join
library(dplyr)

Soc_Match <- Th_SOC %>%
  inner_join(Pur_SOC,by=c(Plot.ID="plot.no"))
