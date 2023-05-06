dna <- fasta2DNAbin(file="Secuenncias.fasta")
D <- dist.dna(dna, model = "TN93")
```


```{r fig1, fig.height = 15, fig.width= 8}
tre <- njs(D)
plot(tre, cex = 0.6)
title("Árbol de tipo NJ")