tamSeq <- function(dnaSeq) {
    contador <- 0
    for (i in dnaSeq) {
        contador <- contador + 1
    }
    return(contador)
}