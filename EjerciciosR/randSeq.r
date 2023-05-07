randSeq <- function(num) {
    bases <- c("A","C", "T", "G", "N", "-")
    x <- sample(bases, size = num, replace = TRUE)
    return(x)
}

