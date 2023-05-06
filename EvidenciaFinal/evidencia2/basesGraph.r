gwuhan = data.frame(
  bases = c("A", "C", "G", "T"),
  g1 = percentageBases(strainAY27)
)

w <- ggplot(gwuhan, aes(x = bases, y = g1, fill = bases)) +
  geom_bar(data = gwuhan, aes(x = bases, y = g1, fill = "Sars-CoV-2"), stat = "identity", position = "dodge") +
  labs(title = "Comparación de las bases de ADN de las variantes del virus",x = "Bases", y = "Frecuencia", fill = "") +
  scale_fill_manual(values = c("Sars-CoV-2" = "darkred")) +
  theme_minimal()


grid.arrange(w, ncol=2)