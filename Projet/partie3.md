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

