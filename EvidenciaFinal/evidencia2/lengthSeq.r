lengthSeq <- function(dnaseq) {
  contador <- 0
  for (i in 1:length(dnaseq)) {
    contador <- contador + 1
  }
  return(contador)
}