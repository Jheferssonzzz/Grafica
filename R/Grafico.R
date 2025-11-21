library(shiny)
library(ggplot2)

grafico_ventas <- function() {
  datos <- data.frame(
    meses = c("Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"),
    ventas = c(320, 410, 280, 360, 500, 450)
  )

  datos$meses <- factor(datos$meses,
                        levels = c("Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"))

  ggplot(datos, aes(x = meses, y = ventas)) +
    geom_bar(stat = "identity", fill = "purple") +
    geom_text(aes(label = ventas), vjust = -0.5, color = "white", size = 4) +
    labs(
      title = "Ventas del supermercado en el segundo semestre",
      x = "Meses",
      y = "Ventas"
    ) +
    theme_minimal() +
    theme(plot.title = element_text(hjust = 0.5, face = "bold"))
}
grafico_ventas()
