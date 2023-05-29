library(readxl)
library(dplyr)
library(writexl)
gas_data <- read_excel('C:\\Users\\Areij Kandi\\OneDrive\\Desktop\\VisGroupProject\\gas.xlsx')
cpi_data <- read_excel('C:\\Users\\Areij Kandi\\OneDrive\\Desktop\\VisGroupProject\\cpi.xlsx')


gas_data <- gas_data %>% select(-one_of('DGUID', 'UOM', 'UOM_ID', 'SCALAR_FACTOR','SCALAR_ID','VECTOR','COORDINATE','STATUS','SYMBOL','TERMINATED','DECIMALS'))
cpi_data <- cpi_data %>% select(-one_of('DGUID', 'UOM', 'UOM_ID', 'SCALAR_FACTOR','SCALAR_ID','VECTOR','COORDINATE','STATUS','SYMBOL','TERMINATED','DECIMALS'))
cpi_data <- cpi_data %>% select(-'Products and product groups') 


gas_data <-aggregate(gas_data$PricePerCents, list(gas_data$GEO,gas_data$REF_DATE), FUN=mean)
gas_data <-rename(gas_data , GEO=Group.1, REF_DATE=Group.2, Price=x)

  
finalData <- merge(gas_data,cpi_data, by=c("GEO",  "REF_DATE"))
write_xlsx(finalData, 'C:\\Users\\Areij Kandi\\OneDrive\\Desktop\\VisGroupProject\\final.xlsx')