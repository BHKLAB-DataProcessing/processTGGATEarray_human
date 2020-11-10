library(ToxicoGx)
library(gdata)
library(affy)
library(Biobase)
library(xml2)
library(abind)
library("hgu133plus2hsensgcdf")

cdf <- "hgu133plus2hsensgcdf"

xx <- list.files("/pfs/TGHumanArray/CELfiles_Human", full.names = T, "\\.CEL$")
eset <- just.rma(filenames = xx, verbose = TRUE, cdfname = cdf)

saveRDS(eset, "/pfs/out/eset_Human_2382.rds")
