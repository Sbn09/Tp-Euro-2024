# RENDU TP - WEIL - FEUCHEROLLES 📚

Bonjour, voici le compte rendu du TP de ce jour. 📝

Le lien du repo GitHub est [ici](https://github.com/Sbn09/Tp-Euro-2024/). 🌐

Une base de données MySQL gratuite a été utilisée : 💾

```
DBHOST=mysql-29f3fa79-remi-8c9e.a.aivencloud.com
DBNAME=defaultdb
DBUSER=avnadmin
DBPASSWORD=...............
DBPORT=19431
```

(Si jamais elle est mise hors-service, le .sql de la DB est disponible sur GitHub)

## Côté API : 🖥️

Le premier TP consistait à lister les pays. Pour cela, la route API mise à disposition est `http://localhost:5000/countries`.

Ensuite, il a fallu simuler la phase de groupe. Pour cela, nous avons décidé de d'abord laisser la possibilité de créer des compétitions, puis ensuite de créer des groupes pour finalement simuler les matches.

Pour créer une compétition :
La route POST : `http://localhost:5000/competitions/create/'competition-nom'`
Cette route va nous retourner l'id et le nom de la compétition créée.
Exemple :
```json
{
    "name": "competition-nom",
    "id": 3
}
```

Cette id va être utilisée dans l'ensemble des autres routes.

Pour lister les compétitions : `http://localhost:5000/competitions/`

Pour lister les matches de la dite compétition : `http://localhost:5000/competitions/'id-competitions'/with-matches/'level?'`

Pour créer les groupes de manière aléatoire :
La route post : `http://localhost:5000/groups/create-groups/'competition-id'`
Cette route nous retourne le groupe créé avec l'ensemble de pays de chaque groupe.

`http://localhost:5000/groups/'competition-id'`
Pour générer un groupe aléatoirement pour la dite compétition.

Pour finalement simuler les matches de la compétition : `http://localhost:5000/simulate/generate/'competition-id'/'level'`
level correspond aux différentes phases : '99' = phase de groupe , '16' = 16è de finale, '4' = quart de finale , '2' = demi / finale, '1' = finale

Il est nécessaire de simuler chaque phase pour simuler la suivante. Donc 99 -> 16 -> 4 -> 2 -> 1

Pour voir les résultats d'une étape de la compétition : `http://localhost:5000/simulate/view-result/'competions-id'/'level'`
Ceci permet de voir les équipes qualifiées à chaque étape.

`http://localhost:5000/simulate/view-matches/'competions-id'/'level'`
Ceci permet de voir l'ensemble des matches de la compétition au niveau 'level'.

## Work-flow !

Afin d'assurer une intégration continue correcte du projet, un workflow node-js a été créé.

Ce dernier test la création d'une compétation jusqu'à la finale sur la base de test, puis finalement détruit la compétition.

Si tout se passe bien, le work-flow est validé !

## Auto-critique 🤔

Le code est loin d'être optimal, beaucoup de lignes sont dupliquées d'un endroit à l'autre, il devrait y avoir des méthodes plutôt que des duplications de lignes, le front end est moche, pas de sécurité.

## Conclusion 🎉

L'utilisation de GitHub est restée limitée. Malgré tout, des MR ont été faites afin de contrôler les modifications, des branches ont été créées en fonction des features.

Le front-end est existant, bien que minimaliste.

Le front-end est surtout présent pour vous montrer que le back-end est OK.

## Pour que vous testiez le projet 🧪

Exécutez ces commandes dans le dossier API :
```
npm install
npm run dev
```

Puis ensuite soit vous utilisez Postman, soit vous cliquez simplement sur les fichiers HTML dans le dossier front END, pas besoin de serveur, c'est juste du HTML JS.

Vous pouvez aussi tester en utilisant la commande "npm run test" qui teste la création d'une compétition jusqu'à la création d'un match en vous imprimant le gagnant.

