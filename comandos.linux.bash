politica de segurança local

politica da conta
politica de senha
ctrl + alt + f2 -> TTY2 > Rodrigo
ctrl + alt + f3 -> TTY3 > Patrick
ctrl + alt + f4 -> TTY4 > Marcos
ctrl + alt + f5 -> TTY5 > 
ctrl + alt + f6 -> TTY6 >
janela + seta direita
janela + seta esquerda


Rodrigo TTY1
Marcos PTS 

whoami # retorna o nome do usuario atual
whi # mostra todos os usuarios conectados atulamente
clear (ou ctrl+L) # limpa a tela do terminal

man 1s # exibe o manual do comando
(tecla tab) # autocompleta um comando digitado parcialmente
history (ou steas para cima ou para baixo) # exibir o historico de comandos
pwd # mostra o caminho do diretorio atual
ls # lista arquivos e diretorios
ls -l # lista os diretorios com detalhes
ls -a # mostra tambem os arquivos ocultos
ls -lh # mostra os tamanhos dos arquivos em um formato mais legiveis
ls - lhS # lista os arquivos ordenados por tamanho
ls - lt # lista os arquivos ordenados pela data de modificação
ls - lr # lista dos arquivos ordenados de forma reversa
ls - lF # adicionar um caracter especial no final dos nomes
     / -> diretorio 
     * -> arquivo executavel    
     @ -> links simbolicos
     ! -> pipes sao arquivos especiais


ls -l less # permite paginar a saida do ls quando houver muitos arquivos



192.168.88.155
 mkdir #(Make Directory) Cria Diretorios
  mkdir -p 5-semestre/RM/Linux #Cria a estrutura de disretorios(paste e subspastas)
  mkdir -v 5-semestre/RM/Linux/Prova # o parametro -v (verbose) mostra os diretorios


  apt install [nome do programa] #instala um programa
  apt remove [nome do programa] #remove um programa, mas mantem os arquivos de configuracao
  apt purge [nome do programa] #remove um programa e seus arquivos de configuracao
  apt search [nome do program] #procura um programa nos repositorios
  apt show[nome do programa] #exibe detalhes sobre um pacote
  apt update #atualiza a lista de pacotes disponiveis nos repositorios
  apt upgrade #instala as atualizacoes disponiveis para o pacote
  apt update && apt upgrade -y 
  

  #instalando tree
  su - 
  senha Senai@134
  apt install tree #instalando o program tree
  tree --version #verifica a versao instalada
   rmdir #remove diretorio vazio
   rmdir [nome do programa] #remove diretorio
   rmdir [nome do programa] [nome-do-2diretorio] #remove varios diretorio de um
   rm -r [nome do arquivo ou pasta] #remove diretorios e seus conteudos (r de reducperacao)

   touch #cria arquivos vazio 
   touch [nome do arquivo] #cria um arquivo vazio
   touch [nome do arquivo] [nome do 2arquivo] cria varios arquivos de uma so vez

   mv # move ou renomeia arquivos e diretorios 
      mv [arquivo-ou-pasta-de-origem] [arquivo-ou-pasta-de-destino] #move arquivos ou pasta 
      mv [nome-de-arquivo-ou-pasta] [nome=novo-arquivo-ou-diretorio] #renomeia um arquivo ou pastas


     echo # exibe texto na tela ou escreve texto em um arquivo
      echo "Bem-vindo ao Linux" #exibe o texto na tela.
      echo "Bem-Vindo ao Linux" > documento.txt # adicionar o texto no final do arquivo
      echo "Bem-Vindo ao Linux" > documento.txt # insere o texto em um arquivo e sobescreve
      echo "Bem-Vindo ao linux" #exibe o texto na tela
      echo " ;)" > imagem.png

     

      cat # Concatenar arquivos e exibe seu conteudo
          cat [arquivo] #exibe o conteudo de um arquivo
          cat [arquivo] [arquivo2] #junta e exibe o conteudo multiplos arquivos
          cat documentos.txt imagem txt

          file # exibe informacoes sobre o tipo do arquivo
               file documento.txt # mostra o tipo de arquivo "documento.txt"
               file imagem.png # verifica se o arquivo "arquivo.png" e realmente uma imagem valida
          


          help chmod # mostra ajuda sobre comandos internos do shell
          help cd # exibe as informacoes sobre o comando interno cd
          help umask # exibe as informacoes sobre o umask
           

          whatis # exibe uma descricao curta sobre um comando
                whatis # mostrar uma breve descricao sobre um comando "ls"
                whatis chmod # mostra uma breve descricao sobre um comando "chmod"
     


     head # exibe as dez primeiras linhas de um arquivo
         head  -5 # exibe as primeiras 5 linhas do arquivo 
         
              # atividade 
                     # touch animais.txt
                     # nano animais.txt 
                     [1-anta, 2-bicho-preguica, 3-canguru, 4-dragao de komodo,
                          5-elefante, 6-falcao, 7-galo, 8-hipopotamo, 9-iguana,
                          10-jabuti, 11-koala, 12- lobo, 13-macaco, 14- naja
                          15-onca, 16-pinguim, 17-quati, 18-raposa, 19- tamandua
                          20-urso]
                         

     tail # exibe as ultimas 10 linhas do arquivos
         tail animais.txt # exibe as ultimas 10 linhas de um arquivo
         tail -4 animais.txt # exibe as ultimas 4 linhas de um arquivo

     find # procura por arquivos dentro de diretorios
          find /home - name animais.txt # busca o arquivo "animais.txt" dentro do diretorio /home/aluno
          find /var/log -name "*.log" # procura por arquivos com extensao .log dentro de /var/log.
          
     
     
     grep # busca uma palavra ou expressao dentro de um arquivo
         grep -i ["palavra"] [arquivo] # procurar a palavra dentro do arquivo
         grep -i "erro" logs.txt # procurar pela palavra "erro" dentro do arquivo "logs"

         #MINI LAB
                  
                   #Criando um arquivo de usuário fictício
                   cat <<EOF > usuarios.txt
                   ID: 1001 | Nome: Rodrigo | Usuario: Rodrigo | Grupo: admins  
                   ID: 1002 | Nome: Neemias | Usuario: Neemias | Grupo: users
                   ID: 1003 | Nome: Giullia | Usuario: Giullia | Grupo: users
                   EOF
                    #Criando um arquivo de senhas ficticio
                    cat <<EOF > senha.txt
                    ID: 1001 | Nome: Henrique | Henrique| Grupo: admins
                    ID: 1002 | Nome: Neemias  | Neemias | Grupo: users
                    ID: 1003 | Nome: Giulia   | Giulia  | Grupo: users
                    EOF


                    #Criando um arquivo de logs ficticio
                    cat <<EOF > logs.txt
                    [Info] Usuario Henrique acessou o sistema
                    [Warning] Tentativa de login falha para usuario desconhecido
                    [Error] Usuaro Giullia digitou sem senha errada 3 vezes
                    [Info] Usuario Neemias alterou a senha com sucesso
                    EOF



                    ########################################################################################################################################
                                            
                    [Criação de usuarios e grupos] 
               
                    ########################################################################################################################################                                    
                    
                     
                     [adicionar usuarios]
                     
                     
                     useradd # criar um usuario sem senha e sem a pasta home, especificar com o -m
                               sudo useradd [opcoes] [usuario]
                               sudo useradd rodrigo
                              cat /etc/passwd # verifica o registro de usuario
                         
                         passwd # define ou altera a senha de um usuario
                               sudo passwd [nome do usuario] 
                               sudo passwd henrique
                                          # nova senha 
                                          #redigite a nova senha  
                    
                                          
                    
                                          sudo useradd -m maria
                                          cat etc/passwd # verifica o registro de usuarios
                                          # nova senha: Senai@134 ou 123
                                          # redigite a nova senha: Senai@134 ou 123
                                          ls -lh /home # lista os usuarios com suas pastas home
                                           test -f /usr/sbin/adduser && echo "encontrado" || echo "náo encontrado" #verifica se add user esta instalado

                                           [add usuarios com script]

                                           add user #adiciona usuarios e os associa a grupos
                                           # para instalar o adduser
                                           sudo apt pudate && apt install adduser
                                           sudo adduser--version # verifica a versao instalda
                                           sudo adduser -h #mostra o anual de adduser

                                             criar usuario com adduser 

                                             sudo adduser (nome-do-usuario)
                                             sudo adduser silvo
                                             #a nova senha:
                                             # redigita a nova senha:
                                             #nome-completo []:
                                             #numero da sala []:
                                             #fone residencial []
                                             #outros []:
                                             # a informações estão corretas? [S/N]

                                             cat /etc/passwrd #verifica o registro de usuarios

                                             w #mostre os usuarios logados e suas metricas
                                             instlog #exibe o login dos usuarios
                                             last #lista os usurios que logaram recentemente
                                             last rodrigo #exibe as informações apenas do usuario rodrigo
                                             las -F # exibe login e logout detalhadas
                                             last -x #mostra quantas vezes o SO foi ligado/desligado
                                             last -d #mostra usuarios que logaram pela rede com ip de origem

                                             [MINI LAB - exibir informações dos usuarios]
                                             *criar usuarios : JOAO, PACHECO,NEEMIAS,Giulia,marchetti,yuri

                                             id # exibe id do usuario, id do grupo #grupos aos quais pertence
                                                  id --user #retorna id do usuario conectado
                                                  id joao # retorna as informações3 do usuario joao

                                                  users #lista os usuarios
                                                  grupos [usuarios] #retorna os grupos os quais os usuarios pertencem
                                                  logname #retorna o nome de usuario logado na sessao atual

                                                  [excluir usuarios]

                                                  cat /etc/passwd 
                                                  userdel [opções] [usuario] #deleta usuario
                                                  sudo userdel --h #exibe opções de comando
                                                  sudo userdel [usuario] #remove usuario
                                                  id [usuario] #verifica se o usuario foi removido
                                                  ls -lh /home # verifica se o dir home foi removido
                                                  sudo userdel -r [usuario] #remove usuario e susa home
                                                  sudo userdel -f [usuario] força a remoçao de usuario
                                             [alterar usuario]

                                             usermod = #Modifica informações da conata de um usuario
                                             sudo usermod [opções] [usuario]
                                             sudo usermod -c "usuario esta de ferias" silo # adiciona um comentario
                                             cat /etc/passwd #para verificar as alterações
                                             [silvo] nome do Usuario
                                             [x] senha criptografada /etc/shadow
                                             [1003] Uid de user [1003] GID grupo
                                             [: :] campo para informações adicionais
                                             [/home/silvo] Diretorio pessoal do Usuario
                                             [/bin/bash] bash com shell, outros padroes [zshell, dash, shell]

                                             sudoo ursermod -e YYYY-XXX-DD [usuario] #difine a data de expiração da conta
                                             sudo usermod -e 2025/03/20 joao # após esta data o horario podera mais logar
                                             su - [usuario] #para testar login
                                             sudo usermod -l [nome-atual-usuario] [nome-do-usuario] #mudar nome de usuario

                                             sudo-usermod -l silvio vilvio #usuario nao pode estar logado!
                                             id silvio # para verificar a alteração


                                             [grupos de usuario]
                                             #/etc/passwd
                                                  [MINI LAB - CRIAR GRUPOS] [ESTOQUE,CONTABIL,SUPRIMENTOS,RECURSOSHUMANOS,PORTARIA,TECNOLOGIA]
                                                  

                                                  [ADICIONAR GRUPO]
                                                  groupadd [nome-do-grupo] #cria grupo estoque
                                                  sudo groupadd portaria #cria grupo portaria
                                                  sudo grupoadd financeiro #cria grupo financeiro

                                                  for grupo in "financeiro" "tecnologia" "contabil"; do sudo groupadd "$grupo"; done #cria todos grupos de uma só vez
                                                  #for grupo in ..... *> percorre cada nome de grupo na lista
                                               #   sudo groupadd "$grupo" -> adiciona cada grupo iterativamente


                                                  addgroup [nome-do-grupo] #cria um grupo
                                                  sudo addgroup tecnologia #cria um grupo de tecnologia
                                                  sudo addgroup contabil #cria grupo contabil
                                                  sudo addgrup suprimentos #cria grupo de suprimentos
                                                  

                                                  awf -f 'f' '{print $1}' /etc/group #lista apenas os nomes dos grupos no caminho /etc/group
                                                  [awk] #comando para manipulçao de texto (cada linha do etc/group tem campos separados por :)
                                                  [-f ':'] #define o caractere : como delimitador de campo 
                                                  ['{print $1}'] #exibe apenas o primeiro campo ($1), que corresponde ao nome do grupo
                                                  [/etc/group] #arquivo de entrada a lista de grupos do sistema

                                                  cut-d: -f1 /etc/group # lista os nomes dos grupos /etc/group
                                                   
                                                  delgroup [nome-do-grupo] #apaga o grupo
                                                  sudo delgroup tecnologia



                                                  cat /etc/group #lista os nomes dos grupos /etc/group
                                                  groups #mostra os grupos aos quais os usuarios pertencem
                                                  getent #exibe o id
                                                  sudo getent group contabil #exibe o id do grupo contabil
                                                  for grupo in "financeiro "tecnologia" "contabil"; do sudo groupdel "$grupo"; done #exclui todos os grupos de uma vez
                                                  for group in #percorre cada nome de grupo na lista
                                                  sudo groupadd "$grupo";"@e23

                                        

                                                  [Inclui Usuarios em grupo]
                                                  usermod -G [grupo] [usuario] #adiciona um usuario a um grupo
                                                  sudo usermod -G contabil,financeiro leticia #adiciona o usuario a dois grupos
                                                  id leticia # para verificar os grupos que ela pertence
                                                  sudo usermod -g financerio mario
                                                  sudo usermod -G estoque fernando
                                                  sudo usermod -G recepção bruno
                                                  sudo usermod -G tecnologia roberto
                                                  sudo usermod -G suprimentos jose
                                                  sudo usermod -G vendas manuel

                                                  adduser [usuario] --ad_extra_groups [grupo] #adiciona um usuario a um grupo
                                                  sudo adduser riberti --add_extra_groups TECNOLOGIA
                                                  sudo adduser rorberto tecnologia
                                                  id [usuario] #para verificar os grupos que ele pertence

                                                  [EXIBIR USUARIOS DE UM GRUPO]
                                                  
                                                  getent group [nome-do-grupo] #   exibe os usuarios de um grupo especifico

                                                  sudo getent group contabil
                                                  sudo getent group financeiro 
                                                  sudo getent group estoque
                                                  sudo getent group recepcao
                                                  sudo getent group tecnologia
                                                  sudo getent group suprimentos 
                                                  sudo getent group  vendas

                                                  [Alterar usuarios de LM group]

                                                  USERMOD -aG [grupo] [Usuarios]#adiciona um userio a um grupo sem remove-lo dos outros
                                                  sudo -usermod -aG contabil mario
                                                  group mario #retorna a quais grupos o usuario "mario" pertence
                                                  sudo usermod -ag contabil,financeiro,vendas mario
                                                  sudo -usermod -G contabil,financeiro mario #remove "mario do grupo "vendas"

                                                  [excluir usuario de um grupo]
    
    
   
     deluser [usuario] [grupo] # remove um usuario de um grupo especifico
           sudo deluser mario financeiro # removes "mario" do grupo "financeiro"

     gpasswd -d [usuario] [grupo] # alternativa para remover um usuario de um grupo
            sudo passwd -d jose vendas # remove "jose" apenas do grupo "vendas"
            sudo passwd -d leticia financeiro # removes usuario "leticia" apenas do grupo "financeiro"



            # Instalação e configuração do SSH
sudo apt update && sudo apt install openssh-server -y # Instala e atualiza o servidor SSH
sudo systemctl status ssh # Verifica se o SSH está ativo (running)
ip a # Obtém o IP da máquina
sudo systemctl start ssh # Inicia o serviço SSH (caso não esteja rodando)
sudo systemctl enable ssh # Habilita o serviço SSH para iniciar automaticamente
sudo ufw allow ssh # Adiciona regra para liberar SSH no firewall

# Conexão via SSH no Windows (CMD)
ssh # Comando para acessar via SSH

# Navegação entre diretórios
cd # Muda de diretório
cd . # Permanece no diretório atual
cd .. # Retorna ao diretório anterior
cd / # Retorna ao diretório raiz
cd - # Volta para o último diretório acessado
cd ~ # Retorna para a home do usuário
pwd # Mostra o caminho completo do diretório atual



------------------------------------------
sudo ufw app list # listar aplicativos disponíveis


sudo ufw allow 'Nginx HTTP' # libera no firewall http

sudo ufw status # verifica status do firewall

systemctl status nginx

cd /var/www # entra dentro do nosso servidor nginx

cd /var/www/html


sudo systemctl stop nginx - para o serviço
sudo systemctl start nginx - inicia o serviço 
sudo systemctl restart nginx - inicia o serviço


-----------------------------------------------------------

open nano
sudo nano /etc/nginx/sites-available/default





Configuração do Proxy Reverso:

Dentro do arquivo de configuração, adicione o seguinte bloco para configurar o Nginx como um proxy reverso para a API. Suponha que a API está rodando no localhost na porta 3000.

nginx
Copiar


server {
    listen 80;

    server_name example.com;  # Substitua pelo seu domínio ou IP do servidor

    location / {
        proxy_pass http://localhost:3000;  # Substitua pela URL da sua API
        proxy_http_version 1.1;
        proxy_set_header Upgrade $http_upgrade;
        proxy_set_header Connection 'upgrade';
        proxy_set_header Host $host;
        proxy_cache_bypass $http_upgrade;
    }
}
                    

-------------------------------------------------------------------                              
                                   



