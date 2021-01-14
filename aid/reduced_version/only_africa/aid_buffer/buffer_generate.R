##### This code helps 
##### 1. locate the grid info for each project 
##### 2. create the buffer using different radius and
##### 3. find out grid that are located in the buffer region.
##### We use multiple file as input, 


##### Load Data #####
aid <- readOGR(dsn = path.expand("/Users/mxube/Desktop/aid/reduced_version/only_africa"),
               layer = "africa_construction")

##### Transform Projection #####
proj.crs <- proj4string(CRS("+proj=utm +zone=33 +ellps=WGS84 +datum=WGS84 +units=m +no_defs"))

aid.newproj <- spTransform(aid, proj.crs)


##### Create Buffer #####
aid_buffer.5 <- gBuffer(aid.newproj, width = 5000, byid = TRUE)

writeOGR(aid_buffer.5, dsn = path.expand("/Users/mxube/Desktop/aid/reduced_version/only_africa/aid_buffer"),
layer = "buffer_5", driver = "ESRI Shapefile")

aid_buffer.10 <- gBuffer(aid.newproj, width = 10000, byid = TRUE)

writeOGR(aid_buffer.10, dsn = path.expand("/Users/mxube/Desktop/aid/reduced_version/only_africa/aid_buffer"),
layer = "buffer_10", driver = "ESRI Shapefile")

aid_buffer.15 <- gBuffer(aid.newproj, width = 15000, byid = TRUE)

writeOGR(aid_buffer.15, dsn = path.expand("/Users/mxube/Desktop/aid/reduced_version/only_africa/aid_buffer"),
layer = "buffer_15", driver = "ESRI Shapefile")

aid_buffer.20 <- gBuffer(aid.newproj, width = 20000, byid = TRUE)

writeOGR(aid_buffer.20, dsn = path.expand("/Users/mxube/Desktop/aid/reduced_version/only_africa/aid_buffer"),
layer = "buffer_20", driver = "ESRI Shapefile")

aid_buffer.25 <- gBuffer(aid.newproj, width = 25000, byid = TRUE)

writeOGR(aid_buffer.25, dsn = path.expand("/Users/mxube/Desktop/aid/reduced_version/only_africa/aid_buffer"),
layer = "buffer_25", driver = "ESRI Shapefile")

aid_buffer.30 <- gBuffer(aid.newproj, width = 30000, byid = TRUE)

writeOGR(aid_buffer.30, dsn = path.expand("/Users/mxube/Desktop/aid/reduced_version/only_africa/aid_buffer"),
layer = "buffer_30", driver = "ESRI Shapefile")

aid_buffer.35 <- gBuffer(aid.newproj, width = 35000, byid = TRUE)

writeOGR(aid_buffer.35, dsn = path.expand("/Users/mxube/Desktop/aid/reduced_version/only_africa/aid_buffer"),
layer = "buffer_35", driver = "ESRI Shapefile")

aid_buffer.40 <- gBuffer(aid.newproj, width = 40000, byid = TRUE)

writeOGR(aid_buffer.40, dsn = path.expand("/Users/mxube/Desktop/aid/reduced_version/only_africa/aid_buffer"),
layer = "buffer_40", driver = "ESRI Shapefile")

aid_buffer.45 <- gBuffer(aid.newproj, width = 45000, byid = TRUE)

writeOGR(aid_buffer.45, dsn = path.expand("/Users/mxube/Desktop/aid/reduced_version/only_africa/aid_buffer"),
layer = "buffer_45", driver = "ESRI Shapefile")

aid_buffer.50 <- gBuffer(aid.newproj, width = 50000, byid = TRUE)

writeOGR(aid_buffer.50, dsn = path.expand("/Users/mxube/Desktop/aid/reduced_version/only_africa/aid_buffer"),
layer = "buffer_50", driver = "ESRI Shapefile")

##### 
