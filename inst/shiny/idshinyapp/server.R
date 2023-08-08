server <- function(input, output, session) {


  output$gg <- renderPlot({
    ggplot(mtcars) +
      geom_histogram(aes(x = mpg), bins = 10) +
      theme_void()
    })

  output$ggp <- renderPlotly({

    gg <- ggplot(mtcars, aes(x = mpg, y = hp)) +
      geom_point() + geom_smooth()

    ggplotly(gg)

  })

}
