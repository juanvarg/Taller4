######### TALLER 3 ############

generate_data <- function() {
  set.seed(123)
  # Simulación de datos
  n <- 100  # Número de clientes
  clientes <- data.frame(
    Banco = "Bancolombia",
    CC = 1:n,
    Edad = rnorm(n, mean = 30, sd = 10),  # Calificaciones del Examen 1
    Ingresos = rnorm(n, mean = 8000, sd = 1200)   # Calificaciones del Examen 2
  )
  
  clientes2 <- data.frame(
    Banco = "Davivienda",
    CC = 1:n,
    Edad = rnorm(n, mean = 25, sd = 15),  # Calificaciones del Examen 1
    Ingresos = rnorm(n, mean = 10000, sd = 2000)   # Calificaciones del Examen 2
  )
  
  clientes <- rbind(clientes, clientes2)
  
  setwd("C:/Users/Juan Felipe/proyecto-simulacion/data/raw")
  writexl::write_xlsx(clientes, "simulated_data.xlsx")
}

