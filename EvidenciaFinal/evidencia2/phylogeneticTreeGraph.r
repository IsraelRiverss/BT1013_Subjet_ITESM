phylogeneticTreeGraph <- function() {
    # Read .fasta, Creat an DNA.bin
    dna <- fasta2DNAbin(file="Secuenncias.fasta")
    D <- dist.dna(dna, model = "TN93")
    # Graph phylogeneticTreeGraph.r
    tre <- njs(D)
    plot(tre, cex = .5)
    title("Árbol de tipo NJ")
}