
<img width="200" alt="portfolio_view" src="https://github.com/FCrSTATS/SportsCodeR/blob/master/img/SportsCodeR.png">

A package with various functions that help people working with OPTA and ChyronHego data, this will be a regularly updated with new functions. Installed via: 

``` r
devtools::install_github("FCrSTATS/fc.rstats")
```

## Parsing Functions 

### parse_f24()
**Parse an OPTA f24 Files:** An OPTA f24 file is an xml file with all of the data for each event of a match. The parse_24() function takes the file location and parses the XML file converting it into a dataframe. All qualifiers are in columns named after them. If the qualifier doesn't have a value but was present it is represented by the value 1.
