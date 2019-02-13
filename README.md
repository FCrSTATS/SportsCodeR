
<img width="220" alt="portfolio_view" align="right" src="https://github.com/FCrSTATS/SportsCodeR/blob/master/img/SportsCodeR.png">

# SportsCodeR

Sporstcode is one of the leading video analysis software in the performance analysis field today, used by thousands of analysts, coaches and athletes around the world. The platform allows analysts and coaches to visually identify what went well and what could be improved in a training session or game by providing a quick and easy way to create interactive reports linked to key highlights. The process is very simple: capture your video into Sportscode, code the different events that take place in the footage, evaluate the results of the relevant events captured and present the insights to coaches and athletes. 

A powerful feature of Sportscode is the ability to import an XML file that creates timelines of clips from the related data. This is a largely under-utilised feature that has huge potential. The SportsCodeR package aims to increase it's usage by making it easy from turning a dataframe of metrics into a SportsCode ready XML file. 

This is a beta version, with more functions to be added at a later date. Feedback will be gratefully received to improve the package. 

## Install Instructions

The package is easy to install via devtools using the following line of code. 

``` r
devtools::install_github("FCrSTATS/SportsCodeR")
```

## Functions 

### df_to_xml_player_team_metric()
**Convert a dataframe into a SportsCode XML file:** Creates an XML file that will put players on rows and put one metric as a value. Refer to the help file for guidance - help(df_to_xml_player_team_metric).

### df_to_xml_team_metric()
**Convert a dataframe into a SportsCode XML file:** Creates an XML file that will put teams on rows and put one metric as a value. Refer to the help file for guidance - help(df_to_xml_team_metric).


## SportsCode Usage 

1. Import XML file 
<img src="https://github.com/FCrSTATS/SportsCodeR/blob/master/img/import.png">

2. Successfully Added to Timeline
<img src="https://github.com/FCrSTATS/SportsCodeR/blob/master/img/imported.png">

3. Clipped With Labels
<img src="https://github.com/FCrSTATS/SportsCodeR/blob/master/img/clipped.png">
