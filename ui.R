library(shiny)

lang_dataset <- read.csv("http://hsequantling.wikispaces.com/file/view/all_words.csv")

shinyUI(
  fluidPage(
    titlePanel("One thousand Most Frequently Used Words"),
    
    fluidRow(
      column(4,
             selectInput("man",
                         "Choose language:",
                         c("All",
                           unique(as.character(lang_dataset$language))))
      ),
      column(8,
             p("Это приложение показывает 1000 самых частотных слов некоторых языков. Данные основаны на материалах сайта http://www.101languages.net/common-words/. Нельзя гарантировать, что данные собраны хорошо (процесс сбора данных на сайте не описан), ровно как и не стоит верить переводам.")
      )
    ),
    
    fluidRow(
      DT::dataTableOutput("table")
    )
  )
)