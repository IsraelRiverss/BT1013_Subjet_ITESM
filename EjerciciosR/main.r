# Importamos archivos, que son una funcion por archivos
source("./randSeq.r")
source("./transcribeDNA.r")
source("./randNum.r")
source("./tamSeq.r")
source("./reverse.r")
source("./porcBasesque.r")
source("./traduceRNA.r")

# Llamamos funciones y asignamos el retrono de las funciones a una variable
num <- randNum()
dnaSeq <- randSeq(num)
rnaSeq <- transcribeDNA(dnaSeq)
lengthSeq <- tamSeq(dnaSeq)
hebraInvertida <- reverse(dnaSeq)
RNA2proteinas <- traduceRNA(dnaSeq)

#Imprimimos variables con el valor de retorno de las funciones y le damos formato
print(paste("Length of DNA:", lengthSeq))
print("Secuencia ADN:")
print(noquote(paste(dnaSeq, collapse = "")))
print("Secuencia ARN:")
print(noquote(paste(rnaSeq, collapse = "")))
print("Porcentajes de bases en la secuencia ADN:")
porcBasesque(dnaSeq)
print("Traduccion de RNA a Proteinas:")
print(RNA2proteinas)
