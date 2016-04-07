library(shiny)

lang_dataset <- read.csv("http://hsequantling.wikispaces.com/file/view/all_words.csv") 

shinyServer(function(input, output) {
  
  output$table <- DT::renderDataTable(DT::datatable({
    if (input$man != "All") {
      lang_dataset <- lang_dataset[lang_dataset$language == input$man,]
    }
    lang_dataset
  }))
  
})