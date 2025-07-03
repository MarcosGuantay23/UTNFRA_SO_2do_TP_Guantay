#!/bin/bash

cd
cd UTN-FRA_SO_Examenes/202406/bash_script/

cat Lista_Usuarios.txt

cat << 'EOF' > GuantayAltaUser-Groups.sh
#!/bin/bash
USUARIO_PASS="$1"
LISTA="$2"
CONTRA=$(sudo grep "$USUARIO_PASS" /etc/shadow | awk -F ':' '{print $2}')
ANT_IFS=$IFS
IFS=$'\n'
for LINEA in $(grep -v '^#' "$LISTA"); do
    USUARIO=$(echo "$LINEA" | awk -F ',' '{print $1}')
    GRUPO=$(echo "$LINEA" | awk -F ',' '{print $2}')
    HOME_USR=$(echo "$LINEA" | awk -F ',' '{print $3}')
    sudo groupadd "$GRUPO"
    sudo useradd -d "$HOME_USR" -p "$CONTRA" -s /bin/bash -g "$GRUPO" "$USUARIO"
done
IFS=$ANT_IFS
EOF

sudo mv GuantayAltaUser-Groups.sh /usr/local/bin/
sudo chmod +x /usr/local/bin/GuantayAltaUser-Groups.sh

cd
cp /usr/local/bin/GuantayAltaUser-Groups.sh /home/guantay/RTA_Examen_20250702/
cd /home/guantay/RTA_Examen_20250702/
ls -la

/usr/local/bin/GuantayAltaUser-Groups.sh guantay /home/guantay/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt

cat /etc/passwd
cat /etc/group
sudo cat /etc/shadow

cd
