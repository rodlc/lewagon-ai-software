## Contexte et Objectifs

Bienvenue au Debugging Dojo !

Imagine que tu travailles avec un collègue sur un projet où il doit implémenter plusieurs méthodes. Mais il a des difficultés avec la syntaxe et la logique. Ta tâche est de l'aider à déboguer son code et à le faire fonctionner correctement.

Bien sûr, il existe de nombreuses façons différentes d'implémenter ces méthodes, mais ton collègue a déjà commencé et tu ne veux pas l'offenser en réécrivant tout à partir de zéro. À la place, tu travailleras avec le code qu'il a fourni et tu apporteras de petits ajustements pour le faire fonctionner comme prévu.

## Spécifications

Ouvre le fichier `lib/debugging_dojo.rb` et corrige le code pour que tous les tests de `rake` passent. Tu peux exécuter les tests avec la commande :

```bash
rake
```

Et, si tu veux essayer d'exécuter du code, nous avons déjà préparé un fichier `lib/your_scratchpad.rb` pour toi. Ce fichier n'est pas testé, donc tu peux y essayer n'importe quel code. Tu peux l'exécuter avec la commande :

```bash
ruby lib/your_scratchpad.rb
```

N'hésite pas à ajouter le code que tu veux dans ce fichier. Tu peux aussi utiliser des instructions `puts` pour imprimer les valeurs des variables et voir ce qui se passe à chaque étape.

## Comment Déboguer

1. **Lis les messages d'erreur** : Les messages d'erreur te donneront un indice sur ce qui ne va pas. Cherche le numéro de ligne et le type d'erreur. Parfois, tu pourrais voir un `NoMethodError`, ce qui signifie que tu essaies d'appeler une méthode qui n'existe pas. D'autres fois, tu pourrais voir un `NameError`, ce qui signifie que tu essaies d'utiliser une variable qui n'a pas encore été définie. Et parfois, tu pourrais voir un `SyntaxError`, ce qui signifie qu'il y a un problème de syntaxe dans ton code. Lis toujours attentivement le message d'erreur et essaie de comprendre ce qu'il te dit. Et, s'il te donne un numéro de ligne, va à cette ligne et regarde le code.
2. **Vérifie la syntaxe** : Assure-toi que la syntaxe de ton code est correcte. Cherche les virgules, parenthèses ou autres erreurs de syntaxe manquantes.
3. **Vérifie la logique** : Assure-toi que la logique de ton code est correcte. S'il n'a pas de sens, essaie de comprendre ce que le code est censé faire et comment il devrait fonctionner.
4. **Utilise des instructions `puts`** : Si tu as toujours des difficultés, ajoute des instructions `puts` à ton code pour imprimer les valeurs des variables à différents points du code. Cela peut t'aider à voir où les choses ne vont pas.
5. **Googler** : Si tu es toujours bloqué·e, essaie de googler le message d'erreur ou le problème que tu rencontres. Tu peux vouloir consulter StackOverflow pour voir si quelqu'un d'autre a eu le même problème.

Note que tu peux toujours consulter la documentation Ruby. C'est une excellente ressource pour comprendre comment fonctionnent différentes méthodes et classes. Tu peux trouver la documentation Ruby [ici](https://ruby-doc.org/).

## Aller Plus Loin

Si tu es vraiment bloqué·e, tu peux essayer `pry-byebug`, qui est un outil de débogage qui te permet de parcourir ton code ligne par ligne et de voir ce qui se passe à chaque étape. Tu devrais déjà l'avoir installé le jour de la configuration.

Pour l'utiliser, mets cette ligne au début de ton fichier :

```ruby
require "pry-byebug"
```

Tu peux ensuite insérer des **points d'arrêt** n'importe où dans ton code :

```ruby
binding.pry
```

Cela mettra en pause l'exécution de ton code à ce point. Ton Terminal ouvrira alors une "console pry", qui fonctionne et ressemble à `irb`. Mais, c'est comme si tu avais démarré `irb` juste à ce moment de ton code. Tu peux alors inspecter les valeurs des variables, appeler des méthodes et voir ce qui se passe à ce point.

Pour continuer l'exécution de ton code, tape `exit` dans la console pry. Tu peux aussi utiliser `next` et `continue` pour parcourir ton code ligne par ligne.

***

Et voici un [excellent article détaillé sur l'art subtil du dépannage](https://www.autodidacts.io/troubleshooting/).
