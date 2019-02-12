
<img width="250" alt="portfolio_view" align="right" src="https://github.com/FCrSTATS/SportsCodeR/blob/master/img/SportsCodeR.png">

# SportsCodeR

Sporstcode is one of the leading video analysis software in the performance analysis field today, used by thousands of analysts, coaches and athletes around the world. The platform allows analysts and coaches to visually identify what went well and what could be improved in a training session or game by providing a quick and easy way to create interactive reports linked to key highlights. The process is very simple: capture your video into Sportscode, code the different events that take place in the footage, evaluate the results of the relevant events captured and present the insights to coaches and athletes. 

A powerful feature of Sportscode is the ability to import an XML file that creates timelines of clips from the related data. This is a largely under-utilised feature that has huge potential. The SportsCodeR package aims to increase it's usage by making it easy from turning a dataframe of metrics into a SportsCode ready XML file. 



``` r
devtools::install_github("FCrSTATS/SportsCodeR")
```

## Parsing Functions 

### parse_f24()
**Parse an OPTA f24 Files:** An OPTA f24 file is an xml file with all of the data for each event of a match. The parse_24() function takes the file location and parses the XML file converting it into a dataframe. All qualifiers are in columns named after them. If the qualifier doesn't have a value but was present it is represented by the value 1.
