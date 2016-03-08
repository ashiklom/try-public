# Read TRY data
library(data.table)
try.raw <- fread('1585.txt', header=TRUE)

# Last column is empty -- just remove it
try.raw[,V27 := NULL]
try.traitinfo <- try.raw[, .N, by=list(DataName, TraitName, UnitName)]

# This is the suggested 
