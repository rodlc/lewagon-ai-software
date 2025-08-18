## Contexte et objectifs

La [classe `Array`](https://ruby-doc.org/3.3.5/Array.html) est l’une des deux structures principales utilisées pour stocker et accéder à des données en Ruby. (L’autre est [Hash](https://ruby-doc.org/3.3.5/Hash.html), que l’on verra demain.)

Un array est ordonné, si bien que chaque élément est accessible par son **indice** (index). Cet exercice t’aidera
à comprendre comment créer un array, comment stocker des données dedans et comment récupérer ces données en utilisant l’indice.
Souviens-toi que les indices des arrays commencent à `0`, et non à `1`.

On demande souvent aux développeurs de trier des choses ; on te conseille donc de te renseigner sur [les algorithmes de tri](https://fr.wikipedia.org/wiki/Algorithme\_de\_tri).

Dans la documentation Ruby, tu devrais trouver plusieurs façons de trier un [Enumerable](http://ruby-doc.org/3.3.5/Enumerable.html). `Array` est une forme d’`Enumerable` ; tu peux donc utiliser toutes les méthodes référencées dans la documentation `Enumerable` quand tu utilises un `Array`, car `Array` **inclut** le module `Enumerable`.

## Spécifications

- Implémente une méthode `wagon_sort` qui prend en argument un tableau de noms d’étudiants (`String`) et retourne un nouveau tableau contenant ces noms triés par ordre alphabétique.
- Le tri ne doit pas tenir compte de la casse : par exemple, `bob` doit apparaître avant `Felix` (cf. [table ASCII](http://www.asciitable.com/)).
- La méthode doit respecter l'orthographe des noms.

### Méthode `wagon_sort`

La méthode `wagon_sort` doit prendre un tableau de noms d’étudiants et retourner un nouveau tableau trié par ordre alphabétique, en ignorant la casse. Le tableau original ne doit pas être modifié.

Par exemple :
- ["bob", "Felix", "Cedric"] doit renvoyer ["bob", "Cedric", "Felix"].
- Un tableau vide doit renvoyer un tableau vide.
- ["Alex", "Claire", "Toni"] doit renvoyer ["Alex", "Claire", "Toni"].

Ton travail consiste simplement à définir la méthode `wagon_sort` dans le fichier `lib/wagon_sort.rb`. Tu peux toutefois la tester en l’appelant directement sur un tableau, comme dans l’exemple ci-dessous :

```ruby
wagon_sort(["bob", "Felix", "Cedric"])
# => ["bob", "Cedric", "Felix"]
```

Ne t’occupe pas de l’interface pour l’instant : cela viendra dans un second temps. Concentre-toi d’abord sur une implémentation correcte de `wagon_sort`.

### Programme interactif

Maintenant, construisons un programme interactif simple qui utilise la méthode `wagon_sort`. Le programme demandera à l'utilisateur d'entrer les noms des étudiants un par un, et lorsque l'utilisateur aura terminé, il affichera la liste triée des noms.

Ouvrez le fichier `interface.rb` et assurez-vous d'utiliser la méthode `wagon_sort`. L'interface devrait avoir une sortie correctement stylisée. Les noms doivent être séparés par des virgules (`, `) sauf pour les deux derniers qui doivent être séparés par le mot `and`. Les noms doivent également être sur une nouvelle ligne.

Elle doit fonctionner comme ceci :

```bash
ruby lib/interface.rb

Type a student name:
felix
Type another student name or press enter to finish:
Cedric
Type another student name or press enter to finish:
bob
Type another student name or press enter to finish:

Congratulations! Your Wagon has 3 students:
bob, Cedric and felix # Remarquez la séparation correcte des mots.
```

💡 Quel type de variable devrais-tu utiliser pour stocker les noms ? Devrait-ce être un array, une chaîne, un entier ou autre chose ?

💡 Comment permettons-nous à l'utilisateur de saisir des données ? N'oublie pas tes `gets` et `puts`.

💡 Comment détecter la fin de la saisie ? Vérifie si l’entrée est vide (c'est-à-dire que l’utilisateur appuie simplement sur Entrée).

💡 Quand trier les noms ? Une fois la saisie terminée ? Et devine quoi : tu as déjà écrit le code pour ça 😉

💡 Comment afficher la liste des noms ? Utilise `puts` pour l’impression, mais veille à un formatage correct (virgules entre les noms, et "and" pour relier les deux derniers noms).

## Points clés à retenir

Familiarise-toi avec les opérations de base sur les tableaux. Tu dois maintenant savoir utiliser la bonne syntaxe pour :

- créer un array
- ajouter un nouvel élément à l’array
- accéder au n-ième élément
- mettre à jour un élément
- supprimer un élément situé à un indice donné
