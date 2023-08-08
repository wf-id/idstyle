ui <- page_navbar(
  theme = id_bs_theme(),
  title = 'My dashboard',
  sidebar =  sidebar(

      sliderInput(inputId = 'a',label = 'A slider',
                  min = 0, max = 10, value = 5, step = 1),
      numericInput(inputId = 'b', label = 'A number', value = 20),
      dateInput(inputId = 'c', label = 'A date'),
      selectizeInput(inputId = 'd', label = 'multiple choices',
                     choices = paste0('SELECT ', 1:5),
                     multiple = TRUE
                     ),
      submitButton(icon = icon('plane'))

    ),
  nav_panel(title = "One", h2("First page content."),
            layout_columns(
              fill = FALSE,
              value_box(
                title = tags$strong("ggplot showcase"),
                value = scales::percent(.567),
                showcase = plotOutput('gg')
              ),
              value_box(
                title = "Bootstrap Icon",
                value = scales::dollar(5.67),
                showcase = bsicons::bs_icon('person'),
                theme_color = "secondary"
              ),
              value_box(
                title = "FontAwesome Icon",
                value = scales::comma(5670),
                showcase = shiny::icon('user', class = 'fa-4x'),
                class = 'bg-success'
              )
            ),
            layout_columns(
              card(full_screen = T,
                   card_header('Full screen card'),
                   card_body(p('This plot uses thematic to access bootstrap theme colors!'),
                   plotlyOutput('ggp')
                   )
                   ),
              card('Simple Card')
            )
            ),
  nav_panel(title = "Two", h2("Second page content."), p('Some text')),
  nav_spacer(),
  nav_item(tags$a(shiny::icon('head-side-virus'),
                  tags$strong(HTML('&nbsp;&nbsp;I&nbsp;D&nbsp;E&nbsp;A&nbsp;S')),
                  href = 'https://wakeforestid.com'))
)
