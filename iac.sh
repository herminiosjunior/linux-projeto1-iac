#!/bin/bash

echo "Criando diretorios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando Grupos de Usuarios..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando Usuarios..."

useradd -m -c "Usuario Carlos" -s /bin/bash carlos -G GRP_ADM && echo "carlos:123" | sudo chpasswd
useradd -m -c "Usuario maria" -s /bin/bash maria -G GRP_ADM && echo "maria:123" | sudo chpasswd
useradd -m -c "Usuario joao" -s /bin/bash joao -G GRP_ADM && echo "joao:123" | sudo chpasswd

useradd -m -c "Usuario debora" -s /bin/bash debora -G GRP_VEN && echo "debora:123" | sudo chpasswd
useradd -m -c "Usuario sebastiana" -s /bin/bash sebastiana -G GRP_VEN && echo "sebastiana:123" | sudo chpasswd
useradd -m -c "Usuario roberto" -s /bin/bash roberto -G GRP_VEN && echo "roberto:123" | sudo chpasswd

useradd -m -c "Usuario josefina" -s /bin/bash josefina -G GRP_SEC && echo "josefina:123" | sudo chpasswd
useradd -m -c "Usuario amanda" -s /bin/bash amanda -G GRP_SEC && echo "amanda:123" | sudo chpasswd
useradd -m -c "Usuario rogerio" -s /bin/bash rogerio -G GRP_SEC && echo "rogerio:123" | sudo chpasswd

echo "Especificando Permissões dos Grupos..."

sudo chown root:GRP_ADM /adm
sudo chown root:GRP_VEN /ven
sudo chown root:GRP_SEC /sec

echo "Especificando Permissões dos diretórios..."

sudo chmod -R 770 /adm
sudo chmod -R 770 /ven
sudo chmod -R 770 /sec
sudo chmod -R 777 /publico

echo "Finalizado..."



