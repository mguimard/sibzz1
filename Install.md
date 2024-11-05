# Fichiers de création des machines virtuelles

Ce dossier contient le nécessaire pour rapidement démarrer un environnement de test Ansible.

Il y a 3 VMs:

- ansible: la machine de controle
- machine1: une machine à controller (Debian)
- machine2: une machine à controller (Centos)

## Configuration des machines virtuelles

Modifier les fichiers Vagrantfile si besoin d'éditer les IP privées.

Exemple: 192.168.33.10 => 192.168.56.10

## Démarrage des machines

Dans chaque dossier, taper la commande suivante dans un terminal (faire cette opération machine par machine, ne pas le faire en parallèle):

```
vagrant up --provision
```

## Vérification de l'installation

Dans le dossier ansible, taper la commande suivante dans un terminal:

```
vagrant ssh
```

Vous êtes à présent en SSH dans la machine de contrôle. Vérifier la connexion SSH aux machines machine1 et machine2

```
ssh 192.168.56.11
ssh 192.168.56.12
```

## Installation d'ansible

Ouvrir une connexion SSH sur la machine de controle Ansible, puis installer ansible avec la commande suivante:

```
pip3 install --user ansible
```

Une fois ansible installé, quitter ssh et ré-ouvrir une connexion ssh sur la machine de controle.

Vérification de la version:

```
ansible --version
```

## Création d'un inventaire

Créer un fichier "inventory" avec le contenu :

192.168.56.11
192.168.56.12


Tester une commande de ping

ansible all -i inventory -m ping

