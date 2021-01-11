

#' Data Frame by PX-Web API
#' 
#' Wrappers of the function  \code{\link{ApiData}} in package PxWebApiData
#' 
#' The two functions \code{\link{ApiData}} and \code{\link{GetApiData}}
#' return two data frames each (label and id).
#' Four corresponding functions that return a single data frame are made.
#' 
#' 
#' @param ... Arguments to ApiData
#' 
#' @importFrom PxWebApiData ApiData GetApiData
#' @export
#' 
#' @examples
#' 
#' ##### Ordinary use
#' 
#' url4861en <- "https://data.ssb.no/api/v0/en/table/04861"
#' ApiDataLabel(url4861en, Region = c("1103", "0301"), ContentsCode = 2, Tid = c(1, -1))
#' ApiDataId(4861, Region = c("1103", "0301"), ContentsCode = "Bosatte", Tid = c(1, -1))
#' 
#' ##### Readymade dataset
#' 
#' url1066en <- "https://data.ssb.no/api/v0/dataset/1066.json?lang=en"
#' GetApiDataLabel(url1066en)
#' GetApiDataId(url1066en)
#'
ApiDataLabel  <- function(...) {
  ApiData(...)[[1]]
}


#' @rdname ApiDataLabel
#' @export
ApiDataId  <- function(...) {
  ApiData(...)[[2]]
}


#' @rdname ApiDataLabel
#' @export
GetApiDataLabel  <- function(...) {
  GetApiData(...)[[1]]
}

#' @rdname ApiDataLabel
#' @export
GetApiDataId  <- function(...) {
  GetApiData(...)[[2]]
}