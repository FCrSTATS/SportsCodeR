#' @export

df_to_xml_player_metric <- function(dat,
                                     first_half_start,
                                     second_half_start,
                                     lag_time,
                                     lead_time,
                                     time,
                                     player_name,
                                     team_name,
                                     metric_col_name,
                                     period_col,
                                     export_filename,
                                     metric_label,
                                     extra_time_start = NA,
                                     extra_time_second_half_start = NA){

  ## Create a formatted version of the df ready for XML creation

  df <- data.frame(ID = paste0("Node:", seq(1:nrow(dat))),
                   time = dat[,time],
                   code = dat[,player_name],
                   team = dat[,team_name],
                   metric1 = dat[,metric_col_name],
                   game_period = dat[,period_col],
                   stringsAsFactors = F)

  ## Create the video sync metadata for quick look up by location
  game_time_meta = c(first_half_start,
                     second_half_start,
                     extra_time_start,
                     extra_time_second_half_start)

  ## Create start and end times from lead and lag preferences
  df$start <- df$time - lead_time
  df$end <- df$time + lag_time

  ## Adjust the start and end depending on game period
  for (row_no in 1:nrow(df)) {
    df[row_no,]$start <- df[row_no,]$start + game_time_meta[df[row_no,]$game_period]
    df[row_no,]$end <- df[row_no,]$end + game_time_meta[df[row_no,]$game_period]
  }

  ### Create the head of the XML
  xml <- xmlTree()
  xml$addTag("file",close=FALSE)
  xml$addTag("SORT_INFO", close = FALSE)
  xml$addTag("sort_type", "sort order",close = FALSE)
  xml$closeTag() # </sort_type>
  xml$closeTag() # </SORT_INFO>
  xml$addTag("ALL_INSTANCES", close=FALSE)

  ### Loop through each row and add xml instqnce
  for(i in 1:nrow(df)){

    xml$addTag("instance", close=FALSE)

    xml$addTag("ID", df[i,]$ID,close = TRUE)
    xml$addTag("start", df[i,]$start,close = TRUE)
    xml$addTag("end", df[i,]$end,close = TRUE)
    xml$addTag("code", df[i,]$code,close = TRUE)

    # create the Team Label
    xml$addTag("label", close=FALSE)
    xml$addTag("group","Team", close=TRUE)
    xml$addTag("text", df[i,]$team,close = TRUE)
    xml$closeTag() # </label> close the label

    # create the Packing Type Label
    xml$addTag("label", close=FALSE)
    xml$addTag("group",metric_label, close=TRUE)
    xml$addTag("text", paste0(metric_label, ": ",df[i,]$metric1),close = TRUE)
    xml$closeTag() # </label> close the label

    xml$closeTag() # </instance>

  }

  # close off the open document tags
  xml$closeTag() # </ALL_INSTANCES>
  xml$closeTag() # </file>

  # save the result
  saveXML(xml, file = export_filename,encoding="iso-8859-1")
  print("XML created and exported successfully")

}


