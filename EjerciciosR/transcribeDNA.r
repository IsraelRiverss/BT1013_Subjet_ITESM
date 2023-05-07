transcribeDNA <- function(dnaseq) {
    for(i in 1:length(dnaseq)){
        if (dnaseq[i] == "T"){
        dnaseq[i] <- "U"
        }
    }
    return (dnaseq)
}