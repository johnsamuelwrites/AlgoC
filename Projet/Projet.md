# Année: 2022-2023

# Projet

L\'objectif du projet est de créer un environnement client-serveur pour
l\'analyse et la gestion des images et de leurs métadonnées. Cependant,
contrairement aux applications client-serveur traditionnelles, nous
n\'enverrons pas les images au serveur pour analyse, mais nous
effectuerons une analyse d\'image côté client et enverrons des rapports
de synthèse au serveur.

![](./images/client-server.svg)

## Client-Serveur

Un environnement client-serveur permet un mode de communication sur un
réseau entre les programmes. Un de ces programmes est appelé serveur qui
répond aux requêtes d'autres programmes appelés clients. Par exemple,

1.  Un client envoie un message au serveur et le serveur reçoit le
    message et le renvoie.
2.  Un client envoie l'opérateur et un/deux numéros et le serveur fait
    le calcul et envoie le résultat.

Référence : <https://fr.wikipedia.org/wiki/Client-serveur>

Dans ce projet, le serveur connaît uniquement les informations suivantes
pour chaque client et stocke ces informations.

-   Nom de la machine cliente
-   Balises (hashtags) d\'image distinctes sur l\'ordinateur client (par exemple,
    chats, chiens, etc.)
-   Couleurs prédominantes des images sur la machine cliente (par
    exemple, \# 2020DE, \# FF3E23, etc.)

Il y a cinq tâches dans ce projet. 

# Environnement de programmation:
- Système d'exploitation: Linux
  - Ubuntu
  - Machine virtuelle (VirtualBox) + Ubuntu
- Compilateur: gcc
- Logiciels: gnuplot
  - Installation: sudo apt install gnuplot gnuplot-x11

**Algorithmes et structure de données**: par exemple, liste, pile, file, graphes

## Tâche 1.

Dans notre première tâche, votre mission consiste à envoyer différents types de messages.

1.  Le client envoie son nom et le serveur renvoie le même nom, en guise
    d\'accusé de réception.
2.  Un simple message envoyé par le client, auquel le serveur renvoie
    une réponse.
3.  Le client envoie deux numéros et un opérateur mathématique et le
    serveur répond le résultat de l\'opération.
4.  Le client envoie N couleurs et le serveur les enregistre dans un
    fichier.
5.  Le client envoie N balises et le serveur les enregistre dans un fichier.


### a. message

Pour simuler un environnement client-serveur, on va utiliser une seule
machine en lançant deux terminaux. Sur un des deux terminaux exécutez le
code du serveur. Sur l'autre, exécutez le code du client.

Téléchargez les fichiers suivants à partir d'e-campus : client.h,
client.c, serveur.h, serveur.c, Makefile. Lisez bien tous les fichiers.
Exécutez

`              $ make             `

et voyez les fichiers exécutables qui sont créés.

Ouvrez deux terminaux. Sur le premier terminal, exécutez

`              ./serveur             `

et sur le second terminal

`              ./client             `

Entrez un message et voyez les affichages sur les deux terminaux.

![](./images/client-server-message.svg)

Modifiez la fonction recois\_envoie\_message (serveur.c). Quand le
serveur reçoit un message, il demande à l'utilisateur de saisir un
message et envoie ce message au client. Testez votre code. 

**Attention**: N'oubliez pas d'utiliser make (pour la compilation et la génération des fichiers exécutables).

### b. nom

Vous avez remarqué les premiers caractères dans chaque message
commencent par 'message' et suivi par :. Pour toutes les prochaines
missions, nous devons remplacer \"message\" par
\"nom\"/\"calcul\"/\"couleurs\". Votre prochain objectif est d\'écrire
une fonction envoie\_nom\_de\_client(\...) dans le fichier client.c
(C\'est à vous pour décider le nom) et une fonction renvoie\_nom(\...)
dans le fichier serveur.c qui renvoie le nom.

![](./images/client-server-nom.svg)

**Astuce** : Vous pouvez utiliser la fonction gethostname(...) (unistd.h) pour obtenir le nom de votre machine. Ne demandez pas le nom de votre machine à l'utilisateur.

### c. calcul

Votre prochaine mission consiste à effectuer des opérations
mathématiques côté serveur. Modifiez les fichiers client.c et serveur.c
pour prendre en charge des opérations mathématiques simples
(+,-,\*,\...). Ajoutez une fonction envoie\_operateur\_numeros(\...)
dans le fichier client.c et recois\_numeros\_calcule(\...) dans le
fichier serveur.c. Le client envoie l'opérateur et un (ou deux) numéros
et le serveur envoie le résultat. Par exemple, si le client envoie le
message.

`               calcule : + 23 45             `

Le serveur répond

`               calcule : 68              `

![](./images/client-server-calcul.svg)

Testez votre code avec des nombres à virgule flottante et des entiers.

### d. couleurs

Votre prochaine mission dans cette tâche consiste à écrire une fonction
envoie\_couleurs(\...) dans le fichier client.c et une fonction
recois\_couleurs(\...) dans le fichier serveur.c. Le client envoie N
couleurs (N\<30) en utilisant le codage RGB
(<https://fr.wikipedia.org/wiki/Rouge_vert_bleu>) et le serveur reçois
ces couleurs et les enregistre dans un fichier.

par exemple, si le client veut envoyer 10 couleurs, il enverra le
message suivant

`              couleurs: 10, #0effeee,...             `

![](./images/client-server-couleurs.svg)

### e. balises

Votre dernière mission dans cette tâche consiste à écrire une fonction
envoie\_balises(\...) dans le fichier client.c et une fonction
recois\_balises(\...) dans le fichier serveur.c. Le client envoie N
balises (N\<30) et le serveur reçois
ces balises et les enregistre dans un fichier.

par exemple, si le client veut envoyer 10 balises, il enverra le
message suivant

`              couleurs: 10, #nature, #arbre,...             `

![](./images/client-server-balises.svg)

## Tâche 2.

Pour cette tâche, notre objectif est d\'utiliser le format d\'image bmp
et de communiquer entre le serveur et le client à l\'aide du format de
message JSON.

Modifiez les fichiers *json.h* et *json.c*.

Références:

1.  BMP : <https://fr.wikipedia.org/wiki/Windows_bitmap>
2.  JSON : <https://fr.wikipedia.org/wiki/JavaScript_Object_Notation>

### a. gnuplot

Téléchargez les fichiers suivants à partir d'e-campus : 
bmp.h,, client.h, couleur.h, json.h, operations.c, serveur.c, testes.c, validation.c,
bmp.c, client.c, couleur.c, json.c, Makefile, operations.h, serveur.h, testes.h, validation.h

 
Téléchargez le dossier images. Les images proviennent de Wikimedia
Commons et sont en format BMP.

Lisez bien les fichiers. bmp.c, bmp.h qui vous permettent d'analyser les
images en format BMP.

Lancez la compilation avec

`              $ make             `

et voyez les fichiers exécutables qui sont créés. Ouvrez deux terminaux.
Sur le premier terminal, exécutez

`              ./serveur             `

et sur le second terminal

`              ./client chemin_d’une_image_bmp             `

Le serveur reçois les dix premières couleurs de l'image analysé par le
client et exécute une commande déjà existantes sur votre machine :
gnuplot en utilisant popen. N'oubliez pas fermer gnuplot après chaque
utilisation.

Les deux fichiers serveur.c et client.c sont initialement écris pour
travailler avec dix premières couleurs. Modifiez les deux fichiers de
manière à ce que ce nombre de couleurs (toujours \<=30) soit saisi par
l'utilisateur. Testez votre code. N'oubliez pas d'utiliser make.

### b. JSON

Nous avons utilisé les messages très simples entre client et serveur

`              message: bonjour             `

par exemple

```
              calcule: + 23 45
              couleurs: 10, #0effeee,...
```

Sans utiliser les bibliothèques externes, modifiez le code client.c et
serveur.c et ajoutez de nouvelles fonctions pour travailler avec le
format de messages JSON. Par exemple,

```
              {
                "code" : "message",
                "valeurs" : [ "bonjour"]
              }
              {
                "code" : "calcule",
                "valeurs" : [ "+", "23", "45" ]
              }
              {
                "code" : "couleurs",
                "valeurs" : [ "#0effeee", "#0effe23", ...]
              }
              {
                "code" : "balises",
                "valeurs" : [ "#nature", "#arbre", ...]
              }
```

## Tâche 3.

Pour cette tâche, notre objectif est de nous assurer que le transfert
des messages entre le client et le serveur respecte le format JSON et le
protocole de communication.

Modifiez les fichiers *validation.h*, *validation.c* *json.h* et *json.c*.


Références:

1.  <http://json.org/json-fr.html>: Site officiel de JSON
2.  <https://jsonlint.com/>: JSONLint- The JSON Validator
3.  JSON : <https://fr.wikipedia.org/wiki/JavaScript_Object_Notation>

### a. Validation des messages JSON

Sans utiliser les bibliothèques externes, créez un fichier C
*validateur.c* et ajoutez de nouvelles fonctions pour valider les
messages JSON.

Par exemple, les messages suivantes sont valides. Vous voyez que nous
n\'utilisons pas de guillemets pour les nombres, mais nous utilisons des
guillemets pour les chaînes de caractères.

```
              {
                "code" : "message",
                "valeurs" : [ "bonjour"]
              }
              {
                "code" : "calcule",
                "valeurs" : [ "+", 23, 45 ]
              }
              {
                "code" : "couleurs",
                "valeurs" : [ 10, "#0effeee", "#0effe23", ...]
              }
              {
                "code" : "balises",
                "valeurs" : [ "#nature", "#arbre", ...]
              }
```

Mais, la message suivante n\'est pas valide parce que les valeurs
\'message\' et \'bonjour\' ne figurent pas entre les guillemets.

```           {
                "code" : message,
                "valeurs" : [ bonjour]
              }
```

Vous pouvez tester la validité des messages JSON à l\'aide du site en
ligne <https://jsonlint.com>

Modifiez le code client.c et serveur.c et intégrez les nouvelles
fonctions de validation pour que le serveur et le client reçoivent
uniquement des messages JSON valides.

### b. Validation du protocole de communication

Nous avons seulement autorisé quatre opérations. Notre prochain objectif
est de nous assurer que la demande envoyée par le client et la réponse
envoyée par le serveur respectent le protocole et que nous n\'acceptons
aucune autre opération.

Voir les exemples donnés ci-dessous. Votre prochain objectif consiste à
ajouter des fonctions dans le fichier *validateur.c* permettant de
vérifier que chaque opération ne contient que les valeurs autorisées.

#### 1. message

![](./images/client-server-message.svg)

**Exemple de requête envoyé par le client**

```           {
                "code" : "message",
                "valeurs" : [ "bonjour"]
              }
```

**Exemple de réponse envoyé par le serveur**

```           {
                "code" : "message",
                "valeurs" : [ "bonjour"]
              }
```

#### 2. nom

![](./images/client-server-nom.svg)

**Exemple de requête envoyé par le client**
```

              {
                "code" : "nom",
                "valeurs" : [ "neptune"]
              }             
```

**Exemple de réponse envoyé par le serveur**
```

              {
                "code" : "nom",
                "valeurs" : [ "neptune"]
              }             
```

**3. calcul**

![](./images/client-server-calcul.svg)

**Exemple de requête envoyé par le client**
```

              {
                "code" : "calcule",
                "valeurs" : [ "+", 23, 45 ]
              }             
```

**Exemple de réponse envoyé par le serveur**

```
              {
                "code" : "calcule",
                "valeurs" : [ 68 ]
              }             
```

**4. couleurs**

![](./images/client-server-couleurs.svg)

**Exemple de requête envoyé par le client**
```

              {
                "code" : "couleurs",
                "valeurs" : [ 10, "#0effeee", "#0effe23", ...]
              }             
```

**Exemple de réponse envoyé par le serveur**
```

              {
                "code" : "couleurs",
                "valeurs" : [ "enregistré"]
              }             
```

**5. balises**

![](./images/client-server-balises.svg)

**Exemple de requête envoyé par le client**
```

              {
                "code" : "balises",
                "valeurs" : [ 10, "#nature", "#arbre", ...]
              }             
```

**Exemple de réponse envoyé par le serveur**
```

              {
                "code" : "balises",
                "valeurs" : [ "enregistré"]
              }             
```

## Tâche 4.

### a. Opérations

Votre tâche suivante consiste à implémenter les fonctionnalités
suivantes sur le serveur.

-   moyenne
-   le minimum
-   maximum
-   écart-type

Jusqu\'à présent, vous avez envoyé des opérations simples au serveur: +, - etc.
Modifiez le code client pour envoyer une liste de nombres et un
calcul d'opérations avec plus de possibilités: moyenne, minimum,
maximum, écart type.

Le client et le serveur doivent envoyer des valeurs JSON valides.
Modifiez les fichiers *operations.h*, *operations.c*, *validation.h*, *validation.c* *json.h* et *json.c*.

**Exemple de requête envoyé par le client**
```

              {
                "code" : "calcule",
                "valeurs" : [ "minimum", 23, 45, 34 ]
              }             
```

**Exemple de réponse envoyé par le serveur**
```

              {
                "code" : "calcule",
                "valeurs" : [ 23 ]
              }             
```

## Tâche 5.

### Plusieurs clients

![](./images/client-server.svg)

Votre objectif final pour ce projet est de créer une plate-forme
multi-client. Jusqu\'à maintenant, vous avez toujours un client et un
serveur à la fois. Mais maintenant, nous voulons que plusieurs clients
puissent communiquer avec votre serveur à la fois. Modifier votre code
serveur, afin qu\'il puisse accepter plusieurs requêtes client à la
fois.

En utilisant le code écrit dans les tâches précédentes, écrire un code
afin que chaque client informe le serveur des informations suivantes et que le serveur les enregistre.
-   Nom de la machine cliente
-   Balises d'image (hashtags) distinctes sur l'ordinateur client
-   Couleurs prédominantes des images sur la machine cliente

Enfin, écrivez des tests fonctionnels et unitaires pour vérifier si

-   votre client et votre serveur peuvent accepter tous les types
    d\'opérations (message, nom, calcul, couleurs).
-   votre client et votre serveur peuvent accepter et analyser les
    messages JSON
-   votre client et votre serveur peuvent valider les messages JSON et
    respecter le protocole de communication.
-   plusieurs clients peuvent communiquer simultanément avec votre
    serveur.

#### Fichiers
*bmp.c  client.c  couleur.c  json.c  operations.c  serveur.c  testes.c  validation.c
bmp.h  client.h  couleur.h  json.h  operations.h  serveur.h  testes.h  validation.h
Makefile*
