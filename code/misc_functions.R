### functions for otherwise repetitive code elsewhere in the project ###

# Jessalyn Ayars

## load_gps_data: assumes that latest gps data is labelled "gps_cleaned.csv" and stored in data-private.
# assign output to gps_data. crs is 32610!! matches CFO data
load_gps_data <- function() {
  gps_data <- read_csv(here("data-private", "gps_cleaned.csv")) %>%
    st_as_sf(coords = c("long_utm", "lat_utm"), crs = 32610, remove = FALSE) %>%
    mutate(date_gmt = mdy(date_gmt)) %>%
    mutate(usfws_id = as.character(usfws_id)) %>% 
    mutate(across(where(is.character), as.factor)) %>%
    # time zone issue
    mutate(datetime = with_tz(datetime_gmt, "US/Pacific"))
}

## load_repro_data: assumes repro data is labelled "repro_cleaned_covs.csv" and stored in data-raw.
# assign output to dataset name. long/lat utm are in 32610, matching cfo dat
load_repro_data <- function() {
  repro_data <- read_csv(here("data-private", "repro_cleaned_covs.csv")) %>%
    st_as_sf(coords = c("long_utm", "lat_utm"), crs = 32610, remove = FALSE) %>%
    mutate(M_USFWS = as.character(M_USFWS)) %>% 
    mutate(F_USFWS = as.character(F_USFWS)) %>% 
    mutate(across(where(is.character), as.factor))
}

### credit to vignette in the graphics::pairs help file, these are for pairwise scatterplot/correlation matrices 
panel.spearman <- function(x, y, digits = 2, prefix = "", cex.cor, ...) {
  par(usr = c(0, 1, 0, 1))
  r <- cor(x, y, method = "spearman")
  txt <- format(c(r, 0.123456789), digits = digits)[1]
  txt <- paste0(prefix, txt)
  if(missing(cex.cor)) cex.cor <- 0.8/strwidth(txt)
  text(0.5, 0.5, txt, cex = cex.cor * r)
}
panel.pearson <- function(x, y, digits = 2, prefix = "", cex.cor, ...) {
  par(usr = c(0, 1, 0, 1))
  r <- cor(x, y, method = "pearson")
  txt <- format(c(r, 0.123456789), digits = digits)[1]
  txt <- paste0(prefix, txt)
  if(missing(cex.cor)) cex.cor <- 0.8/strwidth(txt)
  text(0.5, 0.5, txt, cex = cex.cor * r)
}

