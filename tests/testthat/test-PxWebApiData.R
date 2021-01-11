test_that("ApiDataLabel and ApiDataId works", {
  a <- list(ApiDataLabel(4861, Region = c("1103", "0301"), ContentsCode = "Bosatte", Tid = c(1, -1)),
               ApiDataId(4861, Region = c("1103", "0301"), ContentsCode = "Bosatte", Tid = c(1, -1)))
  
  b <-           ApiData(4861, Region = c("1103", "0301"), ContentsCode = "Bosatte", Tid = c(1, -1))
  names(b) <- NULL
  expect_identical(a,b)    
})


test_that("ApiDataLabel and ApiDataId works", {
  url1066en <- "https://data.ssb.no/api/v0/dataset/1066.json?lang=en"
  GetApiDataLabel(url1066en)
  GetApiDataId(url1066en)
  a <- list(GetApiDataLabel(url1066en), GetApiDataId(url1066en))
  b <- GetApiData(url1066en)
  names(b) <- NULL
  expect_identical(a,b)    
})