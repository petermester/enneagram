#FROM r-base
FROM rocker/tidyverse:latest
COPY ./enneagram/ /usr/local/src/myscripts
WORKDIR /usr/local/src/myscripts/Enneagram
#RUN R -e "install.packages('shiny', 'shinyWidgets', 'tidyverse', 'ggthemes')"
RUN R -e "install.packages(c('shiny', 'shinyWidgets', 'tidyverse', 'ggthemes'))"
#RUN R -e ".libPaths()"
#RUN R -e "install.packages('tidyverse',dependencies = TRUE)"
#RUN R -e "options(shiny.port = 7775)"

CMD ["Rscript", "app.R"]




#CMD ["Rscript", "runApp(appDir = getwd())"]

#RUN R -e 'setwd("/usr/local/src/myscripts/Enneagram/")'

#RUN RScript -e "shinyApp(appDir = getwd())"

#RUN R -e 'runApp( "\
#  appDir = getwd(), "\
#  port = getOption("shiny.port"), "\
#  launch.browser = getOption("shiny.launch.browser", interactive()), "\
#  host = getOption("shiny.host", "127.0.0.1"), "\
#  workerId = "", "\
#  quiet = FALSE, "\
#  display.mode = c("auto", "normal", "showcase"), "\
#  test.mode = getOption("shiny.testmode", FALSE) "\
#)'
