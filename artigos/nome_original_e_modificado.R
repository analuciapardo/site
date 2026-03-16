

limpar_nomes_web <- function(dir_path, max_chars = 50) {
  
  # listar pdfs
  files <- list.files(dir_path, pattern = "\\.pdf$", full.names = TRUE)
  nomes <- basename(files)
  
  # separar nome e extensão
  nome_base <- tools::file_path_sans_ext(nomes)
  extensao <- tools::file_ext(nomes)
  
  # remover acentos
  nome_base <- iconv(nome_base, from = "UTF-8", to = "ASCII//TRANSLIT")
  
  # minúsculas
  nome_base <- tolower(nome_base)
  
  # substituir espaços
  nome_base <- gsub("\\s+", "_", nome_base)
  
  # remover caracteres especiais
  nome_base <- gsub("[^a-z0-9_]", "", nome_base)
  
  # remover underscores duplicados
  nome_base <- gsub("_+", "_", nome_base)
  
  # reduzir tamanho
  nome_base <- substr(nome_base, 1, max_chars)
  
  # recompor nome
  novos_nomes <- paste0(nome_base, ".", extensao)
  
  # caminhos novos
  novos_caminhos <- file.path(dir_path, novos_nomes)
  
  # renomear
  file.rename(files, novos_caminhos)
  
  data.frame(
    original = nomes,
    novo = novos_nomes
  )
}




limpar_nomes_web("C:/Users/duttr/OneDrive/Documentos/GitHub/site/artigos")

original = c("Artigo A Lei Aldir Blanc para a Arte de Rua e Circo - Ana Lúcia Pardo (2)[1]",
  "Artigo Ana Lúcia Pardo apresentado no XIII Seminário Internacional de Políticas Culturais 2024 FCRB",
  "Artigo de Ana Lúcia Pardo apresentado no X Congresso Latino-Americano de Ciência Política no México 2019",
  "Artigo de Ana Lúcia Pardo apresentado no XVII ENECULT 2021",
  "Artigo de Ana Lúcia Pardo e Luiz Augusto F. Rodrigues na Revista La Roca 2020 digital__wecompress.com_",
  "Artigo de Ana Lúcia Pardo e Steven Dutt Ross na publicação Apoena",
  "Artigo de Ana Lúcia Pardo e Steven Dutt Ross no ENECULT",
  "Artigo de Ana Lúcia Pardo no LIVRO A TEATRALIDADE DO HUMANO (1)",
  "Artigo de Ana Lúcia Pardo no V Encontro Nacional da ULEPIC Brasil 2014",
  "Artigo de Ana Lúcia Pardo no VI Seminário Internacional de Políticas Culturais 2015",
  "Artigo de Ana Lúcia Pardo no XI ENECULT 2015",
  "Artigo de Ana Lúcia Pardo no XI Seminário Internacional de Políticas Culturais FCRB e LABAC 2020",
  "ARTIGO DE ANA LÚCIA PARDO NO XI SEMINÁRIO INTERNACIONAL DE POLÍTICAS CULTURAIS",
  "Artigo de Ana Lúcia Pardo no XII Seminário Internacional de Políticas Culturais 2023",
  "ARTIGO DE ANA LÚCIA PARDO PARA O DOSSIÊ TRABALHO CULTURAL E PRECARIEDADE DA REVISTA PRAGMATIZES DA UFF 2021 (2)",
  "ARTIGO DE ANA LUCIA PARDO PARA O XVII ENECULT (1)",
  "ARTIGO DE ANA LÚCIA PARDO SOBRE OS CONCEITOS DE CULTURA (1)[1]",
  "ARTIGO DE ANA LÚCIA R. PARDO NO GT 153 XV RAM",
  "Artigo Dossiê Pontos de Cultura para Políticas Culturais em Revista",
  "ARTIGO O LUGAR DA CULTURA NO GOVERNO BRASILEIRO de Ana Pardo (1)",
  "ARTIGO O QUE REVELAM E OCULTAM AS MÁSCARAS NOS PROTESTOS DAS RUAS[1]",
  "Artigo publicado no ebook Arte Política e Sociedade Editora CLAEC",
  "ARTIGO SOBRE A CULTURA COMUNITÁRIA NA AMERICA LATINA ANA PARDO",
  "Artigo sobre Trabalho na Cultura Dossiê Revista PragMatizes UFF pdf (2)")


novo = c("artigo_a_lei_aldir_blanc_para_a_arte_de_rua_e_circ",
  "artigo_ana_lucia_pardo_apresentado_no_xiii_seminar",
  "artigo_de_ana_lucia_pardo_apresentado_no_x_congres",
  "artigo_de_ana_lucia_pardo_apresentado_no_xvii_enec",
  "artigo_de_ana_lucia_pardo_e_luiz_augusto_f_rodrigu",
  "artigo_de_ana_lucia_pardo_e_steven_dutt_ross_na_pu",
  "artigo_de_ana_lucia_pardo_e_steven_dutt_ross_no_en",
  "artigo_de_ana_lucia_pardo_no_livro_a_teatralidade_",
  "artigo_de_ana_lucia_pardo_no_v_encontro_nacional_d",
  "artigo_de_ana_lucia_pardo_no_vi_seminario_internac",
  "artigo_de_ana_lucia_pardo_no_xi_enecult_2015",
  "artigo_de_ana_lucia_pardo_no_xi_seminario_internac",
  "artigo_de_ana_lucia_pardo_no_xi_seminario_internac",
  "artigo_de_ana_lucia_pardo_no_xii_seminario_interna",
  "artigo_de_ana_lucia_pardo_para_o_dossie_trabalho_c",
  "artigo_de_ana_lucia_pardo_para_o_xvii_enecult_1",
  "artigo_de_ana_lucia_pardo_sobre_os_conceitos_de_cu",
  "artigo_de_ana_lucia_r_pardo_no_gt_153_xv_ram",
  "artigo_dossie_pontos_de_cultura_para_politicas_cul",
  "artigo_o_lugar_da_cultura_no_governo_brasileiro_de",
  "artigo_o_que_revelam_e_ocultam_as_mascaras_nos_pro",
  "artigo_publicado_no_ebook_arte_politica_e_sociedad",
  "artigo_sobre_a_cultura_comunitaria_na_america_lati",
  "artigo_sobre_trabalho_na_cultura_dossie_revista_pr")

#-------------------------------------------------------------------------------------



```{r results="asis",echo=FALSE}


dir_path = "C:/Users/duttr/OneDrive/Documentos/GitHub/site/artigos"
# listar pdfs
files <- list.files(dir_path, pattern = "\\.pdf$", full.names = TRUE)
nomes <- basename(files)

original = c("Artigo A Lei Aldir Blanc para a Arte de Rua e Circo - Ana Lúcia Pardo (2)[1]",
             "Artigo Ana Lúcia Pardo apresentado no XIII Seminário Internacional de Políticas Culturais 2024 FCRB",
             "Artigo de Ana Lúcia Pardo apresentado no X Congresso Latino-Americano de Ciência Política no México 2019",
             "Artigo de Ana Lúcia Pardo apresentado no XVII ENECULT 2021",
             "Artigo de Ana Lúcia Pardo e Luiz Augusto F. Rodrigues na Revista La Roca 2020 digital__wecompress.com_",
             "Artigo de Ana Lúcia Pardo e Steven Dutt Ross na publicação Apoena",
             "Artigo de Ana Lúcia Pardo e Steven Dutt Ross no ENECULT",
             "Artigo de Ana Lúcia Pardo no LIVRO A TEATRALIDADE DO HUMANO (1)",
             "Artigo de Ana Lúcia Pardo no V Encontro Nacional da ULEPIC Brasil 2014",
             "Artigo de Ana Lúcia Pardo no VI Seminário Internacional de Políticas Culturais 2015",
             "Artigo de Ana Lúcia Pardo no XI ENECULT 2015",
             "Artigo de Ana Lúcia Pardo no XI Seminário Internacional de Políticas Culturais FCRB e LABAC 2020",
             "Artigo de Ana Lúcia Pardo no XII Seminário Internacional de Políticas Culturais 2023",
             "ARTIGO DE ANA LÚCIA PARDO PARA O DOSSIÊ TRABALHO CULTURAL E PRECARIEDADE DA REVISTA PRAGMATIZES DA UFF 2021 (2)",
             "ARTIGO DE ANA LUCIA PARDO PARA O XVII ENECULT (1)",
             "ARTIGO DE ANA LÚCIA PARDO SOBRE OS CONCEITOS DE CULTURA (1)[1]",
             "ARTIGO DE ANA LÚCIA R. PARDO NO GT 153 XV RAM",
             "Artigo Dossiê Pontos de Cultura para Políticas Culturais em Revista",
             "ARTIGO O LUGAR DA CULTURA NO GOVERNO BRASILEIRO de Ana Pardo (1)",
             "ARTIGO O QUE REVELAM E OCULTAM AS MÁSCARAS NOS PROTESTOS DAS RUAS[1]",
             "Artigo publicado no ebook Arte Política e Sociedade Editora CLAEC",
             "ARTIGO SOBRE A CULTURA COMUNITÁRIA NA AMERICA LATINA ANA PARDO",
             "Artigo sobre Trabalho na Cultura Dossiê Revista PragMatizes UFF pdf (2)")


#link_text <- original[1]
#url <- paste0('https://raw.githubusercontent.com/analuciapardo/site/main/artigos/',nomes[1])
#cat("[", link_text, "](", url, ")", sep="")


link_text <- NULL
url <- NULL

N <- 23
for(i in 10:N){
  link_text[i] <- original[i]
  url[i] <- paste0('https://raw.githubusercontent.com/analuciapardo/site/main/artigos/',nomes[i])
  cat("[", link_text[i], "](", url[i], ")", sep="")
}

# install.packages("htmltools")
#library(htmltools)
#tags$a(href = "https://www.rstudio.com", "RStudio Website")

```
