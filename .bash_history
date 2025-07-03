ls -la
sudo apt update 
sudo apt install git
git --version
ssh keygen
ls -la
ssh keygen
ssh-keygen
ls -la
cd .ssh/
ls -la
cat id_rsa.pub
cd ..
ls -la
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
ls -la
./UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
source ~/.bashrc
sudo apt update
sudo apt install wget gpg
UBUNTU_CODENAME=jammy
wget -O- "https://keyserver.ubuntu.com/pks/lookup?fingerprint=on&op=get&search=0x6125E2A8C77F2818FB7BD15B93C4A3FD7BB9C367" | sudo gpg --dearmour -o /usr/share/keyrings/ansible-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/ansible-archive-keyring.gpg] http://ppa.launchpad.net/ansible/ansible/ubuntu $UBUNTU_CODENAME main" | sudo tee /etc/apt/sources.list.d/ansible.list
sudo apt update && sudo apt install ansible
ansible --version
sudo apt update
sudo apt install wget gpg
UBUNTU_CODENAME=jammy
wget -O- "https://keyserver.ubuntu.com/pks/lookup?fingerprint=on&op=get&search=0x6125E2A8C77F2818FB7BD15B93C4A3FD7BB9C367" | sudo gpg --dearmour -o /usr/share/keyrings/ansible-archive-keyring.gpg
ansible --version
ansible --version
git --version
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo docker run hello-world
version --docker
sudo docker run hello-world
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo docker run hello-world
version --docker
sudo docker run hello-world
sudo docker --version
sudo fdisk -l
sudo fdisk /dev/sdc
sudo fdisk /dev/sdd
sudo pvcreate /dev/sdc1 /dev/sdc2 /dev/sdd1
sudo vgcreate vg_datos /dev/sdd1 /dev/sdc1
sudo vgcreate vg_temp /dev/sdc2
sudo vgs
sudo lvcreate -L 5MB vg_datos -n lv_docker
sudo lvcreate -l +100%FREE vg_datos -n lv_workareas
sudo vgs
sudo lvcreate -l +100%FREE vg_temp -n lv_swap
sudo lvs
sudo fdisk -l
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_workareas
sudo mkswap /dev/mapper/vg_temp-lv_swap
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker/
df -h
cd /
sudo mkdir work
sudo mount /dev/mapper/vg_datos-lv_workareas work/
sudo systemctl restart docker
sudo systemctl status docker
sudo swapon /dev/mapper/vg_temp-lv_swap
df -h
cd
cd UTN-FRA_SO_Examenes/202406/bash_script/
cat Lista_Usuarios.txt
cd /usr/local/bin/
sudo vim GuantayAltaUser-Groups.sh 
sudo chmod +x GuantayAltaUser-Groups.sh
cd
cp /usr/local/bin/GuantayAltaUser-Groups /home/daniel/RTA_Examen_20250621/
cp /usr/local/bin/GuantayAltaUser-Groups /home/guantay/RTA_Examen_20250621/
ls -la
cp /usr/local/bin/GuantayAltaUser-Groups /home/daniel/RTA_Examen_20250702/
cp /usr/local/bin/GuantayAltaUser-Groups /home/guantay/RTA_Examen_20250702/
sudo cp /usr/local/bin/GuantayAltaUser-Groups /home/daniel/RTA_Examen_20250621/
cp /usr/local/bin/GuantayAltaUser-Groups /home/guantay/RTA_Examen_20250702/
ls -la
cd /usr/local/bin/GuantayAltaUser-Groups/
cd /usr/local/bin/GuantayAltaUser-Groups
cd /usr/local/bin/
ls -la
cp GuantayAltaUser-Groups /home/guantay/RTA_Examen_20250702/
cp GuantayAltaUser-Groups.sh /home/guantay/RTA_Examen_20250702/
cd /home/guantay/RTA_Examen_20250702/
ls -la
cd /usr/local/bin/
GuantayAltaUser-Groups.sh /home/guantay/RTA_Examen_20250702/bash_script/Lista_Usuarios.txt
s
cd /usr/local/bin/
./GuantayAltaUser-Groups.sh /home/guantay/RTA_Examen_20250702/bash_script/Lista_Usuarios.txt
./GuantayAltaUser-Groups.sh guantay /home/guantay/RTA_Examen_20250702/bash_script/Lista_Usuarios.txt
ls -la
cat .bash_history
ls -la
cd RTA_Examen_20250702/
ls -la
./
cd /usr/local/bin/
sudo vim GuantayAltaUser-Groups.sh 
./GuantayAltaUser-Groups.sh
cd /usr/local/bin/
./GuantayAltaUser-Groups.sh guantay /home/guantay/RTA_Examen_20250702/bash_script/Lista_Usuarios.txt
cd ..
cd .
cd ..
ls -la
cd ..
ls -la
cd ..
cd .
ls -la
cd UTN-FRA_SO_Examenes/
ls -la
cd ..
ls -la
cd UTN-FRA_SO_Examenes/202406/bash_script/
ls -la
cd ..
cd /usr/local/bin/
./GuantayAltaUser-Groups.sh guantay /home/guantay/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
cd
cd /usr/local/bin/
cat /etc/passwd
cat /etc/group
sudo cat /etc/shadow
cd
cd UTN-FRA_SO_Examenes/202406/doker/
cd UTN-FRA_SO_Examenes/202406
ls -la
cd docker/
sudo vim index.html
sudo vim dockerfile
sudo fdisk /dev/sdd
sudo pvcreate /dev/sdd2
sudo vgextend vg_datos /dev/sdd2
sudo lvextend -l +100%FREE /dev/mapper/vg_datos-lv_docker
sudo resize2fs /dev/mapper/vg_datos-lv_docker
sudo systemctl restart docker
sudo docker build -t d4n13l301/web1-guantay:latest .
sudo docker rmi d4n113l301/web1-guantay:latest
sudo docker images
sudo docker rmi   237de9d38e89
ls
docker build -t marcosguantay/web1-guantay:latest .
sudo docker build -t marcosguantay/web1-guantay:latest .
docker push marcosguantay/web1-guantay:latest 
sudo docker push marcosguantay/web1-guantay:latest 
sudo docker login
sudo docker images
sudo docker push marcosguantay/web1-guantay:latest 
docker run -d -p 8080:80 marcosguantay/web1-guantay
sudo docker run -d -p 8080:80 marcosguantay/web1-guantay
docker ps
sudo docker ps
curl localhost:8080
echo "docker run -d -p 8080:80 marcosguantay/web1-guantay" > run.sh
sudo chmod +x run.sh
./run.sh
sudo ./run.sh
sudo docker ps
sudo docker run -d -p 8081:80 marcosguantay/web1-guantay
sudo docker ps
cd
cd UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/tasks/
vim main.yml
cd ..
mkdir templates
ls -la
cd templates/
vim alumno.j2
vim equipo.j2
cd
cd UTN-FRA_SO_Examenes/202406/ansible/
ls
cat playbook.yml
ansible-playbook -i inventory/hosts playbook.yml
cd
ls -la
cat .bash_history
ls -la
cd RTA_Examen_20250702/
ls -la
vim Punto_A.sh
cat Punto_A.sh
ls -la
vim Punto_A.sh
sudo nano Punto_A.sh
s
y
sudo nano Punto_A.sh
cat Punto_A.sh
vim Punto_B.sh
cat Punto_B.sh
sudo nano Punto_A.sh
vim Punto_A.sh
cat Punto_A.sh
vim Punto_C.sh
cat Punto_C.sh
sudo su
./GuantayAltaUser-Groups.sh
su - guantay
su - guantay
ls -la
cd 
cd RTA_Examen_20250702/
ls -la
cat .bash_history
sudo cat .bash_history
ls -la
cd ..
ls -la
cat .bash_history
cd RTA_Examen_20250702/
cat Punto_A.sh
cat Punto_C.sh
vim Punto_C.sh
cat Punto_B.sh
vim Punto_D.sh
cat Punto_D.sh
sudo chmod +x Punto_A.sh
sudo chmod +x Punto_B.sh
sudo chmod +x Punto_C.sh
sudo chmod +x Punto_D.sh
ls -la
cd
sudo cp -r /home/guantay/RTA_Examen_20250702/ /home/guantay/UTNFRA_SO_2do_TP_Guantay/
sudo cp -r /home/guantay/UTN-FRA_SO_Examenes/202406/ /home/guantay/UTNFRA_SO_2do_TP_Guantay/
ls -la
cd UTNFRA_SO_2do_TP_Guantay/
ls -la
cd
rm -rf UTNFRA_SO_2do_TP_Guantay
sudo rm -rf UTNFRA_SO_2do_TP_Guantay
ls -la
cd RTA_Examen_20250702/
ls -la
cd
git clone git@github.com:MarcosGuantay23/UTNFRA_SO_2do_TP_Guantay.git
ls -la
sudo cp -r /home/guantay/RTA_Examen_20250702/ /home/guantay/UTNFRA_SO_2do_TP_Guantay/
sudo cp -r /home/guantay/UTN-FRA_SO_Examenes/202406/ /home/guantay/UTNFRA_SO_2do_TP_Guantay/
