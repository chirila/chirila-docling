## scripts to create tab delimited data

setwd("/Users/clb3/Documents/GitHub/chirila-docling")

#read in exported files

lex <- read.table(file="data/lexicons.tab", sep=",", header=FALSE, fill=TRUE)
var <- read.file(file="data/varieties.tab", as.is=TRUE, header=FALSE)
langs <- read.file(file="data/stdlangs.tab", as.is=TRUE, header=FALSE)
glosses <- read.file(file="data/glosses.tab", as.is=TRUE, header=FALSE)
recs <- read.file(file="data/reconstructions.tab", as.is=TRUE, header=FALSE)


#add headers
colnames(lex)  <- c("Variety","StdLangName","OriginalForm","OriginalGloss","OriginalPofSpeech","PhonemicizedForm","SourceShortCode","FormNote","GeneralNote","DialectNote","RecordID","SourceID","StdGlossID","StdLangID","VarietyID")
colnames(var)  <- c("","")
colnames(langs)  <- c("","")
colnames(glosses)  <- c("","")
colnames(recs)  <- c("","")

#write files

write.csv(lex, "data/lexicons.csv")
