traduceRNA <- function(rna3) {
  RNA2protein <- list(
  "UUU" = "Phe", "UUC" = "Phe", "UUA" = "Leu", "UUG" = "Leu",
  "UCU" = "Ser", "UCC" = "Ser", "UCA" = "Ser", "UCG" = "Ser",
  "UAU" = "Tyr", "UAC" = "Tyr", "UAA" = "*", "UAG" = "*",
  "UGU" = "Cys", "UGC" = "Cys", "UGA" = "*", "UGG" = "Trp",
  "CUU" = "Leu", "CUC" = "Leu", "CUA" = "Leu", "CUG" = "Leu",
  "CCU" = "Pro", "CCC" = "Pro", "CCA" = "Pro", "CCG" = "Pro",
  "CAU" = "His", "CAC" = "His", "CAA" = "Gln", "CAG" = "Gln",
  "CGU" = "Arg", "CGC" = "Arg", "CGA" = "Arg", "CGG" = "Arg",
  "AUU" = "Ile", "AUC" = "Ile", "AUA" = "Ile", "AUG" = "Met",
  "ACU" = "Thr", "ACC" = "Thr", "ACA" = "Thr", "ACG" = "Thr",
  "AAU" = "Asn", "AAC" = "Asn", "AAA" = "Lys", "AAG" = "Lys",
  "AGU" = "Ser", "AGC" = "Ser", "AGA" = "Arg", "AGG" = "Arg",
  "GUU" = "Val", "GUC" = "Val", "GUA" = "Val", "GUG" = "Val",
  "GCU" = "Ala", "GCC" = "Ala", "GCA" = "Ala", "GCG" = "Ala",
  "GAU" = "Asp", "GAC" = "Asp", "GAA" = "Glu", "GAG" = "Glu",
  "GGU" = "Gly", "GGC" = "Gly", "GGA" = "Gly", "GGG" = "Gly"
)
  vacio <- vector(mode = "character", length = length(rna3)/3)
  for (i in 1:(length(rna3)/3)) {
    v <- c(rna3[(i*3)-2], rna3[(i*3)-1], rna3[(i*3)])
    vacio[i] <- ifelse(v[1] %in% c("U", "C", "A", "G")& v[2] %in% c("U", "C", "A", "G") & 
    v[3] %in% c("U", "C", "A", "G"), RNA2protein[[paste(v, collapse = "")]], "NA")
  }
  return(vacio)
}