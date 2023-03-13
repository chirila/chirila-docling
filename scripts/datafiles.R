## scripts to create tab delimited data

setwd("/Users/clb3/Documents/GitHub/chirila-docling")

library(bib2df)

### Set up files of record
#read in exported files

lex <- read.table(file="data/lexicons.tab", sep=",", header=FALSE, fill=TRUE)
var <- read.table(file="data/varieties.tab", as.is=TRUE, header=FALSE)
langs <- read.table(file="data/stdlangs.tab", as.is=TRUE, header=FALSE)
glosses <- read.table(file="data/glosses.tab", as.is=TRUE, header=FALSE)
recs <- read.table(file="data/reconstructions.tab", as.is=TRUE, header=FALSE)
sources <- read.table(file="data/sources.tab", as.is=TRUE, sep=",", header=FALSE)
Zotsources <- bib2df(file="data/ZotSources.bib")


# Add headers
colnames(lex)  <- c("Variety","StdLangName","OriginalForm","OriginalGloss","OriginalPofSpeech","PhonemicizedForm","SourceShortCode","FormNote","GeneralNote","DialectNote","RecordID","SourceID","StdGlossID","StdLangID","VarietyID")
colnames(var)  <- c("Variety","VarietyID","StdLangID","AIATSISCode","GlottologCode","ISOCode","Latitude","Longitude","Family","StdName","Subgroup","Note")
colnames(langs)  <- c("","")
colnames(glosses)  <- c("","")
colnames(recs)  <- c("","")
colnames(sources)  <- c("Shortcode","SourceID","AccessRights","AIATSIS","Archive","Author","CurrIDSource","CurLocation","CurrName","CurrNotes","CurrVarietyID","Note","Orthography","Own","PrioritySource","Processed","Published","ReceivedFrom","BookTitle","Chapter","Editors","Journal","Pages","Place","Publisher","Title","Type","Variety","Year")

### Write files

write.csv(lex, "data/lexicons.csv")
write.csv(var, "data/varieties.csv")
write.csv(langs, "data/stdlangs.csv")
write.csv(glosses, "data/glosses.csv")
write.csv(recs, "data/reconstructions.csv")
#write.csv(sources, "data/sources.csv")


### Perform data checks

## Lexicon


## Varieties


## Standard Languages


## Glosses


## LexiconReconstructions


## Sources

# Items missing from Zotero and incorrect keys

zotkey <- Zotsources$BIBTEXKEY
sourcekey <- sources$Shortcode

Zotright <- subset (zotkey, zotkey %in% sourcekey)
Zotmissing <- subset (zotkey,!(zotkey %in% sourcekey))
Zotwrong <- subset (sourcekey,!(sourcekey %in% zotkey))

## Perform statistics


