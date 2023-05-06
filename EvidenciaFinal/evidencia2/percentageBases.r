percentageBases <- function(dnaseq){
  bnum <- c(0, 0, 0, 0)
  for (i in 1:length(dnaseq)) {
    if (dnaseq[i] == "A") {
      bnum[1] <- bnum[1] + 1
    } else if (dnaseq[i] == "C") {
      bnum[2] <- bnum[2] + 1
    } else if (dnaseq[i] == "G") {
      bnum[3] <- bnum[3] + 1
    } else if (dnaseq[i] == "T") {
      bnum[4] <- bnum[4] + 1
    }
  }
  tot_b <- sum(bnum)
  porcentaje_bases <- c(0, 0, 0, 0)
  for (i in 1:length(bnum)) {
    porcentaje_bases[i] <- ((bnum[i] / tot_b) * 100)
  }
  return(porcentaje_bases)
}