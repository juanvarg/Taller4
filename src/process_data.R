process_data <- function(file_path) {
  setwd("C:/Users/Juan Felipe/proyecto-simulacion/data/raw")
  clientes <- readxl::read_xlsx("simulated_data.xlsx")
  
  clientes$Edad <- as.numeric(clientes$Edad)
  clientes$Ingresos <- as.numeric(clientes$Ingresos)
  clientes$Banco <- as.character(clientes$Banco)
  
  
  setwd("C:/Users/Juan Felipe/proyecto-simulacion/data/processed")
  writexl::write_xlsx(clientes, "processed_data.xlsx")
}



