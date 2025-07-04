Enfin, Rails !

## Première semaine - Rails 101

C'est la dernière "vraie semaine" sur Kitt avec des défis jour après jour. À partir de la semaine prochaine, vous commencerez à travailler sur des projets plus longs, soit un clone d'Airbnb, soit votre propre projet personnel. Pour l'instant, nous allons plonger dans l'architecture d'une application Rails fraîchement créée et essayer de comprendre ce qui se passe. **Nous construirons une application Rails par jour**.

### `01 Routage, Contrôleurs & Vues`

Votre premier jour vous présentera le flux standard de Rails : `routing > controller > view` sans ajouter la couche modèle et en expliquant les `params`. Au cours de la journée, vous transformerez d'anciens challenges Ruby de la Semaine 1 en applications Rails.

### `02 Modèles & CRUD`

Voici de nouveau notre vieil ami Active Record ! **Une des conférences les plus importantes de Rails.** Votre coach principal codera les 7 actions CRUD depuis zéro et introduira le routage `resources`. Soyez attentifs ! 🤓

### `03 Routage Avancé`

Aujourd'hui, vous ajouterez un deuxième modèle dans une application Rails en créant un clone à deux modèles de Yelp, avec restaurants et avis. La conférence du matin porte sur aller **au-delà du CRUD** avec un routage avancé et des validations dans Rails.

### `04 Assets Rails`

Apprenez la meilleure configuration pour implémenter Bootstrap SCSS + bibliothèques front-end, et passez de `form_with` à `simple_form_for` en utilisant la config Simple Form Bootstrap.

Découvrez le pipeline des assets.

Pour les exercices, vous commencerez une construction sur deux jours d'une application de watch list, avec 3 modèles : `Movie`, `Bookmark` et `List`.
Vous devrez suivre attentivement la configuration front-end pour travailler sur une application esthétique.

### `05 Hébergement & Upload d'Image`

La conférence de ce matin a deux parties :
**Hébergement** : Déploiement sur [Heroku](http://heroku.com/)

**Upload d'Image** : Nous hébergerons les images sur [Cloudinary](http://cloudinary.com/), en utilisant [ActiveStorage](https://guides.rubyonrails.org/v6.0.1/active_storage_overview.html). Le cours explique aussi comment sécuriser vos clés API avec la gem [dotenv](https://github.com/bkeepers/dotenv). **Écoutez bien si vous ne voulez pas que vos informations bancaires soient volées sur Github.**

Aussi, **quiz !** Le dernier ! Ne soyez pas triste 😢

On fera un point pour vérifier que vous avez bien assimilé toutes les notions clés de Rails.

## Deuxième partie - Semaine IA

**Semaine IA** ! Pour la deuxième partie, vous travaillerez en équipes projets de 3 ou 4. L'objectif est de partir de zéro et construire un Assistant IA pour une Persona et un Objectif — vous aurez 5 blocs pour aller aussi loin que possible avec votre Assistant IA.

- Première démo à mi-parcours - Pour un bootcamp intensif, mercredi (17h)
- **Démo officielle le dernier jour !** Pour un bootcamp intensif, vendredi ! (17h)

**Pas de live-coding cette semaine.** Mais vous aurez quand même des cours matinaux sur l’IA et des sujets avancés Rails. Alors, lève-toi tôt ! Voici un aperçu des thèmes abordés :

### `06 Introduction aux LLM`

Conférence matinale en 2 parties :
- Introduction aux LLM. Vous créerez votre première fonctionnalité basée sur l’IA avec [RubyLLM](https://rubyllm.com/) et comprendrez les fondamentaux des LLM pour ingénieurs logiciel.
- Techniques de collaboration avec git & Github. Vous découvrirez comment travailler en équipe de dev avec les `branches` et les `pull requests`. C’est un système que vous utiliserez sur tous vos projets dev, alors faites attention !

### `07 Prompt Engineering`

Conférence matinale en 2 parties :
- Prompt Engineering. Vous apprendrez à écrire des prompts efficaces pour les LLM, une compétence cruciale pour façonner le comportement de votre Assistant IA.
- Authentification avec la gem [Devise](https://github.com/plataformatec/devise).

### `08 Inférence Multi-modale`

Conférence matinale en 2 parties :
- Inférence multi-modale. Vous apprendrez à envoyer des fichiers avec du texte pour qu’ils soient traités par les LLM.
- JavaScript dans Rails. Apprenez à utiliser Stimulus et `importmap` pour implémenter de nouvelles fonctionnalités JavaScript et utiliser des bibliothèques tierces dans Rails.

Ensuite, chaque groupe devra présenter la version actuelle de son Assistant IA devant la classe.

### `09 UX Conversationnelle`

Permettez aux utilisateurs de poursuivre une première réponse LLM en fournissant l’historique de la conversation au LLM. Vous apprendrez à construire une UX conversationnelle dans votre application Rails avec Turbo streams.

### `10 Outils & Agents`

Conférence matinale en 2 parties :
- Outils & Agents. Vous apprendrez à écrire des outils, pour permettre au LLM de décider quand les utiliser, et à appeler des APIs ou interroger votre base de données quand c’est pertinent.
- WebSockets & ActionCable. Vous apprendrez à streamer les réponses en temps réel pour une meilleure expérience utilisateur.

### Préparation des projets (week-end)

Vous avez fait des choses incroyables – nous sommes très fiers de vous !

Maintenant, place au Grand Final – vos projets. Prenez un peu de temps ce week-end pour réfléchir à vos projets :

- Écrivez vos user stories (pas plus de 15).
- Dessinez des maquettes de vos vues principales sur papier.
- Commencez à construire votre schéma de base de données sur [kitt.lewagon.com/db](http://kitt.lewagon.com/db).
- Commencez à réfléchir à vos routes.

Si vous arrivez à faire tout ça, vous gagnerez beaucoup de temps lundi et pourrez commencer vos projets sans trop de prise de tête.
