#!/bin/bash

cd UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/tasks/
cat << 'EOF' > main.yml
---
# tasks file for 2do_parcial

- debug:
    msg: "Tareas del 2do Parcial"

- name: "Crear directorios en /tmp/2do_parcial/"
  file:
    path: "/tmp/2do_parcial/{{ item }}"
    state: directory
    recurse: yes
  with_items:
    - "alumno"
    - "equipo"

- name: "Agrego archivo desde template"
  template:
    src: alumno.j2
    dest: /tmp/2do_parcial/alumno/datos_alumno.txt

- name: "Agrego archivo desde template"
  template:
    src: equipo.j2
    dest: /tmp/2do_parcial/equipo/datos_equipo.txt

- name: "add NOPASSWD in sudoers for group Supervisores"
  become: yes
  lineinfile:
    path: /etc/sudoers
    state: present
    line: '%2PSupervisores ALL=(ALL) NOPASSWD: ALL'
    validate: 'visudo -cf %s'
EOF

mkdir -p UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/templates
cd UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/templates/
cat << 'EOF' > alumno.j2
Nombre: Marcos
Apellido: Guantay
Division: 117
EOF

cat << 'EOF' > equipo.j2
IP: {{ ansible_default_ipv4.address }}
Nombre Distribucion: {{ ansible_facts.distribution }}
Cantidad de cores: {{ ansible_facts.processor_cores }}
EOF

cd UTN-FRA_SO_Examenes/202406/ansible/
ls
ansible-playbook -i inventory/hosts playbook.yml
