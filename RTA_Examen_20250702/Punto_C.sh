#!/bin/bash

cd UTN-FRA_SO_Examenes/202406
ls -la
cd docker/

cat << 'EOF' > index.html
<div>
<h1> Sistemas Operativos - UTNFRA </h1></br>
<h2> 2do Parcial - Junio 2024 </h2> </br>
<h3> Marcos Guantay </h3>
<h3> División: 117</h3>
</div>
EOF

cat << 'EOF' > Dockerfile
FROM nginx
COPY . /usr/share/nginx/html
EOF

sudo fdisk /dev/sdd << 'EOF'
n
p
2


t
2
8e
w
EOF

sudo pvcreate /dev/sdd2
sudo vgextend vg_datos /dev/sdd2
sudo lvextend -l +100%FREE /dev/mapper/vg_datos-lv_docker
sudo resize2fs /dev/mapper/vg_datos-lv_docker
sudo systemctl restart docker

sudo docker build -t marcosguantay/web1-guantay:latest .

sudo docker push marcosguantay/web1-guantay:latest
sudo docker run -d -p 8080:80 marcosguantay/web1-guantay
sudo docker ps
curl localhost:8080

echo "docker run -d -p 8080:80 marcosguantay/web1-guantay" > run.sh
sudo chmod +x run.sh
sudo ./run.sh

cd

cd UTN-FRA_SO_Examenes/202406
ls -la
cd docker/

cat << 'EOF' > index.html
<div>
<h1> Sistemas Operativos - UTNFRA </h1></br>
<h2> 2do Parcial - Junio 2024 </h2> </br>
<h3> Marcos Guantay </h3>
<h3> División: 117</h3>
</div>
EOF

cat << 'EOF' > Dockerfile
FROM nginx
COPY . /usr/share/nginx/html
EOF

sudo fdisk /dev/sdd << 'EOF'
n
p
2


t
2
8e
w
EOF

sudo pvcreate /dev/sdd2
sudo vgextend vg_datos /dev/sdd2
sudo lvextend -l +100%FREE /dev/mapper/vg_datos-lv_docker
sudo resize2fs /dev/mapper/vg_datos-lv_docker
sudo systemctl restart docker

sudo docker build -t marcosguantay/web1-guantay:latest .

sudo docker push marcosguantay/web1-guantay:latest
sudo docker run -d -p 8080:80 marcosguantay/web1-guantay
sudo docker ps
curl localhost:8080

echo "docker run -d -p 8080:80 marcosguantay/web1-guantay" > run.sh
sudo chmod +x run.sh
sudo ./run.sh

cd
