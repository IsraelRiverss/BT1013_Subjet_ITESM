porcBasesque <- function(dnaSeq) {
    Bases <- c("C", "G", "T", "A","-","N")
    for(i in 1:length(Bases)){
        contador <- 0
        for(j in 1:length(dnaSeq)){
            if (Bases [i] == dnaSeq [j]){
                contador <- contador+1
            }
        }
        amount <- contador*100/length(dnaSeq)
        print(paste0(Bases[i],": ", amount, "%"))
    }
}