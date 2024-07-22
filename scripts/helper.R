calc_recency_factor <- function(date){
  # calculate difference in days
  diff <- as.numeric(Sys.Date() - date)
  # if the skill was practiced in the last 1 years return 1
  if (diff <= 365) {
    return(1)
  } else {
    # linear decrease from 1 to 0 for skills practiced between 1 and 10 years
    return(max(0, 1 - (diff - 365) / 3285))
  }
}