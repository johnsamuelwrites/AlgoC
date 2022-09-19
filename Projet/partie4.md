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
