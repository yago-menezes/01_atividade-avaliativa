#==============================
"Script de teste da questão 6"
"Yago da Silva Menezes"
"yago_menezes2011@hotmail.com"
#==============================

dados_co2 <- read_csv("dados/brutos/dados_co2.csv")

co2_tidy <- dados_co2 %>%
  pivot_longer(
    !ano,
    names_to = "mes",
    values_to = "ppm"
  )

write_csv(co2_tidy, "dados/tidy/co2_tidy.csv.")

co2_tidy <- read_csv("dados/tidy/co2_tidy.csv")

co2_tidy %>% # conjunto de dados
  group_by(ano) %>% # agrupa por ano
  summarise(media = round(mean(ppm), 2)) %>% # calcula a média da variavel ppm em cada grupo
  ggplot(aes(ano, media, group = 1)) + # cria o gráfico
  geom_line(color = "blue", size = 1)

