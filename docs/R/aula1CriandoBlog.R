### Criação de um Blog

# São 2 passos


#####~~~~~     Passo 1 - Carregar pacotes
# usethis e distill

# install.packages("usethis")
install.packages("distill")
library(distill)
install.packages("fastmap")


#####~~~~~     Passo 2 - Criar um projeto
usethis::create_package("portfolioAlessandro")

# Notas:
# a) Não aceita underline, somente letras e pontos
# b) Vai abrir nova janela. Pode fechar a anterior


#####~~~~~     Passo 3 - Conectar com github
# pode-se controlar a sicronização

#use_git_config(user.name = "user",user.email ="project"),...)
usethis::use_git_config(user.name="alessand22",
                        user.email ="alessandro.correa4@gmail")

# usethis::create_github_token()

# Notas:
# a) abre popup para logar no github
# b) já fiz isso antes e tenho gravado em meuTokenGit.txt

# Configurar a chave já gravada
gitcreds::gitcreds_set()

# Nota:
# a) já fiz antes, então já está conectado até expirar
# b) se não copiar e colar a chave nas credenciais
# c) tem que ter o git instalado
# d) Ver tools/Global options/Git/SVN
# e) No meu, está em: C:/Program Files/Git/bin/git.exe

# Habilitar o github
usethis::use_git()


# Criar uma cópia da pasta para o GitHib
usethis::use_github()


# Informar que a pasta vai ser site
usethis::use_github_pages("master", "/docs")

# Notas:
# a) fazer no "master" e na pasta "/docs"
# b) Verificar no git: settings/Pages e em source
#    deve ter:
#    "Your GitHub Pages site is currently being built
#     from the /docs folder in the master branch."


#####~~~~~     Passo - Criar o blog

# Criar arquivo (fica oculto, então ver TRUE)
file.create(".nojekyll")

list.files(all.files = TRUE) # exibe ocultos tb.
distill::create_blog(".","Portfolio do Alessandro",
                     gh_pages = TRUE)
library(distill)


