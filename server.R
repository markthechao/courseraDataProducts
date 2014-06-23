library(shiny)
shinyServer(
    function(input, output) {
        output$bday <- renderPrint({input$bday})
        output$days <- renderPrint({input$days})
        output$nbday <- renderPrint({input$bday + input$days})
        output$n123bday <- renderPrint({input$bday + (1:3)*10000})
        
        output$plot <- renderPlot({
            if(input$goButton != 0) {
                t = seq(0, 2 * pi, length.out = 100)
                x = 16 * sin(t)^3
                y = 13 * cos(t) - 5 * cos(2 * t) - 2 * cos(3 * t) - cos(4 * t)
                plot(x, y, type = "l", xaxt = "n", yaxt = "n", xlab = "", 
                     ylab = "", frame.plot = FALSE, asp=0.8,
                     main=paste0("Your ",input$days,"-day birthday is ",input$bday+input$days,"!"))
                polygon(x, y, col = "red", border = "red")
                xp = c(-14, -13, -10, -5, 5, 7, 11, 14, -16, 15)
                yp = c(-10, -5, -8, -13, -15, -13, -9, -7, 11, 12)
                points(xp, yp, pch = 169, font = 5, col = "red", xaxt = "n", 
                       yaxt = "n", xlab = "", ylab = "")
            }
        })        
    }   
)


