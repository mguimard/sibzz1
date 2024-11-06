# TP : Les rôles et les variables

Le but de ce TP est de bien comprendre la structure conventionelle d'un rôle, et aussi la gestion des variable dans celui-ci.

## Création de la coquille du rôle

Créer un nouveau dossier pour votre projet :

```
mkdir TP11
cd TP11
touch play.yml
mkdir host_vars
mkdir group_vars
mkdir roles
cd roles
ansible-galaxy role init my_role_name
```

Inspecter les différents fichiers créés dans le dossier `roles/my_role_name`

Utiliser la commande `tree .` à la racine du dossier TP11 pour visualiser l'arboresence (`sudo apt install tree -y` si tree n'est pas installé)

## Spécification du rôle

Nous allons créer un rôle avec les fonctionnalités suivantes:

- Création d'un motd personnalisé.
- Possibilité de choisir les informations à afficher :
  - Message : "Bienvenue"
  - Informations basique (nom de l'OS, version, etc...)
  - Liste interfaces
  - Liste DNS
  - Liste partitions
- Reboot du serveur en cas de changement du template (on pourra utiliser juste un debug pour simuler un reboot pour ne pas perdre de temps)

Les options devront avoir comme valeur par défaut :

- message de bienvenue : YES
- toutes les autres options : NO


## Implémentation

L'appel au module template devra être placé dans `tasks/main.yml`.

Le fichier de template devra être placé dans le dossier `template`.

Les variables et leur valeurs par défaut devront être placées dans le fichier `defaults/main.yml`.

Penser à modifier le fichier de template pour utiliser vos variables (par exemple : `{% if display_basic_infos %} .... {% endif %}`)

## Utilisation du rôle et gestion des variables

Tester ce role sur vos 2 groupes debians et centos. Vérifier que seulement le message de bienvenue est affiché.

Créer et éditer les fichiers nécessaires dans `host_vars` et `group_vars` pour se conformer à la specification suivante :

- Les machines du groupe `my_debians` devront afficher les informations basiques + la liste des interfaces.
- La machine debian1 devra afficher la liste DNS.
- Les machines du groupe `my_centos` devront afficher seulement la liste des partitions.
- La machine centos1 devra tout afficher.

## Bonus

Si le temps restant le permet, déployer 2 nouvelles VMS debian2 et centos2 à l'inventaire (les mettre dans les groupes correspondant), lancer le playbook, et vérifier que la spécification est bien respectée.

## Bonus 2

Ecrire la documentation du role dans les fichier `README.md` et les informations dans le dossier `meta`

## Bonus 3 

Lancer le playbook avec toutes les options à YES (extra vars)



