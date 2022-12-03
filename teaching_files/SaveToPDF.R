#######################################################
## FUNKADE 2022: https://stackoverflow.com/questions/54968311/xaringan-export-slides-to-pdf-while-preserving-formatting
######################################################



# install.packages("remotes")
remotes::install_github("jhelvy/renderthis")

#Build a pdf file from a Rmd or html file:

renderthis::to_pdf("teaching_files/rMarkdown_BiostatIII/IntroToRMarkdown2022.html")


###########

remotes::install_github(c('rstudio/pagedown', 'yihui/xaringan'))

#Note that at this moment, the PDF is created asynchronously, and it may surprise you that the PDF file comes a few seconds later after chrome_print() quits. I'm still working on this issue. Other that, pagedown::chrome_print() should work reasonably well now.




##############################################
# NEDAN FUNKADE EJ 2022-12-03 !!!!!
##########################################



#Export Slides to PDF
#Angela Li edited this page on 16 Oct · 15 revisions
#With the {webshot} package

#Note: this has only been tested on Windows (10), MacOS & Linux right now.

#The webshot() function from the {webshot} package can render a xaringan html in pdf.

#Here's how to:
#Install the package

#install.packages("webshot", dependencies = TRUE)
library(webshot)

#Be sure to have PhantomJS installed
#To run the first time you use the package:

#install_phantomjs()

#Convert to pdf

#The webshot() function can convert using a link to a local html. 
#To do this, you'll use the file protocol. Here's a simple way to point to your local file:

#setwd("~/Dropbox/Jobb/Undervisning/rMarkdownBiostatsIII/rMarkdown_BiostatsIII_2018")
file_name <- paste0("file://", normalizePath("teaching_files/rMarkdown_BiostatIII/IntroToRMarkdown2022.html"))

#You can then:

webshot(file_name, "teaching_files/IntroToRMarkdown_2022.pdf")

#Be sure to have the .pdf extension to your destination filename


