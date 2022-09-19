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
