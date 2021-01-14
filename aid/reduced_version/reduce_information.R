##### This code help us do some preliminary cleaning of aid data.
##### We use 'adi_location as input', and create 'comnstruction short' as output.



########## Aid Data ##########
cons_aid <-  readOGR(dsn = path.expand("/Users/mxube/Desktop/aid"),
                     layer = "aid_location")
# 337 observation, with 'precision_code' == 1,2 and only construction projects

##### Exclude projects lower level of time certainty #####
cons_aid <- cons_aid[cons_aid$year_uncer == "FALSE", ]  # 305 obs left

##### Only focus on information that might be useful #####
cons_aid.short <- cons_aid[c("project_lo", "ISO",
                             "latitude", "longitude",
                             "year",
                             "flow_class",  "crs_sector", "crs_sect_1", "usd_defl_2", "status")]

colnames(cons_aid.short@data) <- c("id", "ISO",
                                   "latitude", "longitude",
                                   "year",
                                   "class", "sector_id", "sector", "usd_2014", "status"
)

aid.crs <- CRS(proj4string(conflict.short))

##### Save files #####
writeOGR(cons_aid.short, dsn = path.expand("/Users/mxube/Desktop/aid"),
         layer = "construction_short", driver = "ESRI Shapefile")

rm(list = ls())

