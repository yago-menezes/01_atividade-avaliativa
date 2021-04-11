#==============================
"Script de teste da questão 7"
"Yago da Silva Menezes"
"yago_menezes2011@hotmail.com"
#==============================

tabela_tibble <- tribble(
  ~nome,       ~altura, ~peso,
  "Ana",       155,     50,
  "Ludmilla",  158,     61,
  "Cristina",  162,     65,
  "Tereza",    168,     68,
  "Patrícia",  170,     69,
  "Mariana",   170,     65,
  "Ana Paula", 172,     82,
  "Dirce",     173,     79
)
mean(tabela_tibble$peso)
median(tabela_tibble$peso)
sd(tabela_tibble$peso)

mean(tabela_tibble$altura)
median(tabela_tibble$altura)
sd(tabela_tibble$altura)

plot(tabela_tibble$peso, tabela_tibble$altura)
