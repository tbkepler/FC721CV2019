#' GetCovidEpi
#'
#' This function downloads the current Covid-19 US Epidemiological
#' data from the NTY/GitHub site and appends usefule county information
#' @keywords Covid19
#' @export
#' @examples
#' GetCovidEpi()
#'
GetCovidEpi <- function()
{
  # download Covid Epidemiology Data directly from GitHub
  CovidEpi <- data.table::fread('https://raw.githubusercontent.com/nytimes/covid-19-data/master/us-counties.csv')
  # the county information is not changing. This is the latest data (2019)
#  CountyInfo <- readr::read_csv("data/CountyInfo2019.csv")
  merge(CovidEpi,CountyInfo2019,by="fips")->CovidEpi
  return(CovidEpi)
}
