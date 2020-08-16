# Read the Uniprot IDs file
#set the working directory where the file is present
IDs <- read.delim("uniprot_ID.txt", header = FALSE)
colnames(IDs) <- "Uniprot_IDs"
ids <- IDs[1:500,]

## fUNCTION THAT IS USED TO FIND THE INFORMATION FORM UNIPROT IDs
uniprot_mapping <- function(ids) {
    uri <- 'http://www.uniprot.org/uniprot/?query='
    idStr <- paste(ids, collapse="+or+")
    format <- '&format=tab'
    fullUri <- paste0(uri,idStr,format)
    dat <- read.delim(fullUri)
    dat
}

## Usage

detailed_IDs <- uniprot_mapping(ids)


#Get output as a csv format
write.csv(detailed_IDs, file = "Detaied_uniprot_IDs.csv", row.names=FALSE)








