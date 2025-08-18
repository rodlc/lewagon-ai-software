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

Par exemple, si tu passes l'array `["bob", "Felix", "Cedric"]` à la méthode `wagon_sort`, elle devrait retourner `["bob", "Cedric", "Felix"]`. Si tu passes un array vide, elle devrait retourner un array vide. Si tu passes `["Alex", "Claire", "Toni"]`, elle devrait retourner `["Alex", "Claire", "Toni"]`.

Ton travail consiste simplement à définir la méthode `wagon_sort` dans le fichier `lib/wagon_sort.rb`. Mais si tu veux tester ta méthode pendant que tu travailles, tu peux essayer de l'appeler sur un array réel comme :

```ruby
wagon_sort(["bob", "Felix", "Cedric"])
# => ["bob", "Cedric", "Felix"]
```

Ne t'inquiète pas de construire l'interface pour l'instant ; cela viendra plus tard. Pour le moment, concentre-toi sur l'implémentation correcte de la méthode `wagon_sort`.

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

💡 Quand l'utilisateur a fini d'entrer des noms, comment le savons-nous ? Tu peux vérifier si l'entrée est vide (c'est-à-dire que l'utilisateur a juste appuyé sur entrée sans rien taper).

💡 Quand voulons-nous trier les noms ? Après que l'utilisateur ait fini de les entrer, n'est-ce pas ? Et peut-être l'as-tu déjà deviné, mais tu as écrit du code qui t'aidera à faire cela 😉

💡 Comment affichons-nous les noms ? Tu peux utiliser `puts` pour les imprimer, mais tu voudras les formater correctement. N'oublie pas de séparer les noms avec des virgules et d'utiliser "and" pour les deux derniers noms.

## Enseignements clés

Familiarise-toi avec les opérations de base des arrays. Tu dois maintenant connaître la syntaxe à utiliser pour :

- créer un array
- ajouter un nouvel élément à l’array
- accéder au n-ième élément
- mettre à jour un élément
- supprimer un élément situé à un indice donné
