inUrl1  <- "https://pasta.lternet.edu/package/data/eml/knb-lter-pal/219/5/002f3893385f710df69eeebe893144ff" 
infile1 <- tempfile()
try(download.file(inUrl1,infile1,method="curl"))
if (is.na(file.size(infile1))) download.file(inUrl1,infile1,method="auto")
dt1 <-read.csv(infile1,header=F 
               ,skip=1
               ,sep=","  
               ,quot='"' 
               , col.names=c(
                 "Study",     
                 "Sample",     
                 "Species",     
                 "Region",     
                 "Island",     
                 "Stage",     
                 "Identification",     
                 "Clutch_Completion",     
                 "Egg_Date",     
                 "Length_Culemn",     
                 "Depth_Culmen",     
                 "Flippers",     
                 "Body_Mass",     
                 "Sex",     
                 "Delta.15.N",     
                 "Delta.13.C",     
                 "Comments"    ), check.names=TRUE)