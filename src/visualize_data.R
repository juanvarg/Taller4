visualize_data <- function(file_path) {
  setwd("C:/Users/Juan Felipe/proyecto-simulacion/data/processed")
  clientes <- readxl::read_xlsx("processed_data.xlsx")
  # Calcular el promedio de Edad e Ingreso por Banco
  resumen <- clientes %>%
    group_by(Banco) %>%
    summarise(
      Promedio_Edad = mean(Edad, na.rm = TRUE),
      Promedio_Ingreso = mean(Ingresos, na.rm = TRUE)
    )
  setwd("C:/Users/Juan Felipe/proyecto-simulacion/results/tables")
  writexl::write_xlsx(resumen, "Table_Clients.xlsx")
  
  # Crear las gráficas
  grafico_edad <- ggplot(resumen, aes(x = Banco, y = Promedio_Edad, fill = Banco)) +
    geom_bar(stat = "identity") +
    labs(title = "Promedio de Edad por Banco",
         x = "Banco",
         y = "Promedio de Edad") +
    theme_minimal()
  
  grafico_ingreso <- ggplot(resumen, aes(x = Banco, y = Promedio_Ingreso, fill = Banco)) +
    geom_bar(stat = "identity") +
    labs(title = "Promedio de Ingreso por Banco",
         x = "Banco",
         y = "Promedio de Ingreso") +
    theme_minimal()
  
  setwd("C:/Users/Juan Felipe/proyecto-simulacion/results/figures")
  # Exportar las gráficas a archivos de imagen (PNG)
  ggsave("grafico_edad_bancos.png", plot = grafico_edad, width = 8, height = 6, dpi = 300)
  ggsave("grafico_ingreso_bancos.png", plot = grafico_ingreso, width = 8, height = 6, dpi = 300)
  
}



