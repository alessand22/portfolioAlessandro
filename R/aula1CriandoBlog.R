### Criação de um Blog

# São 2 passos


#####~~~~~     Passo 1 - Carregar pacotes
# usethis e distill

# install.packages("usethis")
install.packages("distill")
library(distill)


#####~~~~~     Passo 2 - Criar um projeto
usethis::create_package("portfolioAlessandro")

# Notas:
# a) Não aceita underline, somente letras e pontos
# b) Vai abrir nova jenela. Pode fechar a anterior


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



