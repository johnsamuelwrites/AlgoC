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


