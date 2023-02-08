#/bin/bash
echo Iniciando o script
echo Criando grupos
echo ==================
#Criando Grupos
groupadd ADM
groupadd VEN
groupadd SEC
echo .
sleep 1s
echo ..
sleep 1s
echo ...
sleep 1s

echo .
echo Criando pastas
echo ==================
#Criando as pastas e direcionando os grupos
mkdir -v /matriz
mkdir -v /matriz/adm
mkdir -v /matriz/ven
mkdir -v /matriz/sec
mkdir -v /matriz/publico
sleep 1s
echo .
sleep 1s
echo ..
sleep 1s
echo ...
sleep 1s
chgrp -v ADM /matriz/adm
chgrp -v VEN /matriz/ven
chgrp -v SEC /matriz/sec

echo .
echo Criando permissões
echo das pastas
echo ==================
chmod -v 775 /matriz
chmod -v -R 771 /matriz/adm
chmod -v -R 771 /matriz/ven
chmod -v -R 771 /matriz/sec
chmod -v -R 777 /matriz/publico
echo .
sleep 1s
echo ..
sleep 1s
echo ...
sleep 1s


echo .
echo Criando Usuários
echo ==================
#Criando Usuarios e pastas (home)
useradd -G ADM -s /bin/bash -m -p $(openssl passwd -1 carlos) carlos
useradd -G ADM -s /bin/bash -m -p $(openssl passwd -1 debora) debora
useradd -G ADM -s /bin/bash -m -p $(openssl passwd -1 josefina) josefina
useradd -G VEN -s /bin/bash -m -p $(openssl passwd -1 maria) maria
useradd -G VEN -s /bin/bash -m -p $(openssl passwd -1 sebastiana) sebastiana
useradd -G VEN -s /bin/bash -m -p $(openssl passwd -1 amanda) amanda
useradd -G SEC -s /bin/bash -m -p $(openssl passwd -1 joao) joao
useradd -G SEC -s /bin/bash -m -p $(openssl passwd -1 roberto) roberto
useradd -G SEC -s /bin/bash -m -p $(openssl passwd -1 rogerio) rogerio
echo .
sleep 1s
echo ..
sleep 1s
echo ...
sleep 1s
