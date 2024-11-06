# TP7 : Le vault

Le but de ce TP est de savoir utiliser ansible-vault pour chiffrer/déchiffrer des fichiers sensibles

## Création d'un fichier de variables

Créer un fichier yaml et y mettre quelques variables, exemple:

```
port: 8080
app_name: my-app
password: 1234
```

Créer un playbook pour y injecter ce fichier de variables avec "vars_files", utiliser la tâche debug pour afficher la valeur de ces variables. 

Tester le playbook.

## Chiffrement du fichier

A l'aide d' ansible-vault, chiffrer le fichier créé avec un mot de passe. Attention, si vous perdez le mot de passe il faudra recommencer.

## Lancement d'un playbook

Lancer à nouveau le playbook avec ansible-playbook en utilisant l'option permettant de déchiffrer.

Taper `ansible-playbook --help` pour trouver cette option.


