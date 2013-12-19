# stata2r project by the Chair of Political Methodology, IPZ, UZH
# code by Christian Müller

options(stringsAsFactors=F)

library("foreign")
library("stringr")
library("plyr")

cabinet <- read.dta("http://www.erdda.se/datafiles/erd/ERD-e_SA_SOE_N-29_Final_22-1-2013_B.dta")

# filter variables
vgood <- c("v001e", "v003e", "v004e", "v005e", "v008e", "v009e", "v010e",
           "v305e", "v603e", "v605e", "v306e", "v310e", "v312e", "v700e")
cabinet <- cabinet[, vgood]

# rename variables
cabinet <- rename(cabinet,
                  c("v001e"="cty_code", "v003e"="cab_code", "v004e"="startdate", "v005e"="enddate", "v008e"="genelect_start", "v009e"="genelect_end", "v010e"="cab_comp", "v305e"="durat_max", "v603e"="durat_rel", "v605e"="durat_abs", "v306e"="n_party_abs", "v310e"="barg_frag", "v312e"="seatshare_largest", "v700e"="elect_volat"))

# fix some encoding problems with party labels
cabinet <- mutate(cabinet,
                  cab_comp = str_replace_all(cab_comp, "\xd6", "Ö"),
                  cab_comp = str_replace_all(cab_comp, "\xe9", "é"),
                  cab_comp = str_replace_all(cab_comp, "\xdc", "Ü"))

# delete three empty rows at the end of the dataset
cabinet[(nrow(cabinet)-2):nrow(cabinet), ]
cabinet <- cabinet[-((nrow(cabinet)-2):nrow(cabinet)), ]

# code countries
cabinet <- mutate(cabinet,
                  cty = mapvalues(
                    cty_code,
                    from=c(01, 02, 03, 04, 05, 06, 07, 08, 09, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29),
                    to=c("Austria", "Belgium", "Denmark", "Finland", "France", "Germany", "Greece", "Iceland", "Ireland", "Italy", "Luxembourg", "the Netherlands", "Norway", "Portugal", "Spain", "Sweden", "United Kingdom", "Bulgaria", "Cyprus", "Czech Republic", "Estonia", "Hungary", "Latvia", "Lithuania", "Malta", "Poland", "Romania", "Slovakia", "Slovenia")))

# encode date variables
library(lubridate)
convert_dat <- function(datev) {
  as.character(ymd("1960-01-01") + days(datev))
}
cabinet <- mutate(cabinet,
                  startdate = convert_dat(startdate),
                  enddate = convert_dat(enddate),
                  genelect_start = convert_dat(genelect_start),
                  genelect_end = convert_dat(genelect_end))

# write data
save(cabinet, file="erdda-cabinet.Rds")
