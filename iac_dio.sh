#!/bin/bash

echo "Criando diretórios..."
mkdir /publico
mkdir /ven
mkdir /adm
mkdir /sec

echo "Criando grupos de usuários..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários GRP_ADM..."
useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

echo "Criando usuários GRP_VEN..."
useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

echo "Criando usuários GRP_SEC..."
useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Atribuindo permissões nos grupos e diretórios..."
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Script executado com sucesso!"