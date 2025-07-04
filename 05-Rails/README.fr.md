Enfin, Rails !

## First week - Rails 101

C'est la dernière "vraie semaine" sur Kitt avec des challenges jour par jour. Dès la semaine prochaine, tu commenceras à travailler sur des projets plus longs, soit un Assistant IA, soit ton propre projet personnel. Pour l'instant, on va plonger dans l'architecture d'une nouvelle app Rails et essayer de comprendre ce qui se passe. **On construira une app Rails par jour**.

### `01 Routing, Controllers & Views`

Ton premier jour te présentera le flux standard de Rails `routing > controller > view` sans ajouter la couche modèle et en expliquant les `params`. Au fil de la journée, tu transformeras d'anciens challenges Ruby de la Semaine 1 en apps Rails.

### `02 Models & CRUD`

Voici notre vieil ami Active Record à nouveau ! **Un des cours les plus importantes de Rails.** Ton lead coach codera les 7 actions CRUD de zéro et présentera le routing `resources`. Sois attentif ! 🤓

### `03 Advanced Routing`

Aujourd'hui, tu ajouteras un second modèle dans une app Rails en construisant un clone à deux modèles de Yelp, avec restaurants et avis. Le cours du matin porte sur aller **Au-delà du CRUD** avec un routing avancé et des validations dans Rails.

### `04 Rails Assets`

Apprends la meilleure configuration pour implémenter Bootstrap SCSS + bibliothèques front-end, et passe de `form_with` à `simple_form_for` avec la config Simple Form Bootstrap.

Découvre le pipeline d’assets.

Pour les exercices, tu commenceras une app de wishlist de films à voir sur deux jours, avec 3 modèles `Movie`, `Bookmark` et `List`.
Tu devras suivre la configuration front-end attentivement pour travailler sur une app qui a de la gueule.

### `05 Hosting & Image Upload`

Le cours du matin a 2 parties :
**Hosting** : Déploiement sur [Heroku](http://heroku.com/)

**Image Upload** : Nous hébergerons les images sur [Cloudinary](http://cloudinary.com/), en utilisant [ActiveStorage](https://guides.rubyonrails.org/v6.0.1/active_storage_overview.html). Le cours explique aussi comment sécuriser tes clés API avec la gem [dotenv](https://github.com/bkeepers/dotenv). **Écoute bien si tu ne veux pas que tes infos bancaires soient volées sur Github.**

Aussi, **quiz time** ! Le dernier ! Ne sois pas triste 😢

On fera un point pour vérifier que tu as bien compris toutes les notions clés de Rails.

## Second part - AI Week

**Semaine IA** ! Pour la deuxième partie, vous travaillerez en équipes projets de 3 ou 4. Le but est de partir de zéro pour construire un Assistant IA pour une Persona et un Objectif - vous aurez 5 blocs pour aller le plus loin possible sur votre Assistant IA.

- Première démo à mi-parcours - Si c’est un bootcamp full-time, mercredi (17h)
- **Démo officielle le dernier jour !** Si c’est un bootcamp full-time, vendredi ! (17h)

**Pas de live-coding cette semaine.** Mais tu auras quand même une conférence matinale couvrant l’IA et des sujets avancés Rails. Alors lève-toi tôt ! Voici un aperçu du contenu :

### `06 Intro to LLMs`

Conférence matinale en 2 parties :
- Introduction aux LLMs. Tu construiras ta première fonctionnalité IA avec [RubyLLM](https://rubyllm.com/) et comprendras les bases des LLMs pour ingénieurs logiciels.
- Authentification avec la gem [Devise](https://github.com/plataformatec/devise).

### `07 Prompt Engineering`

Conférence matinale en 2 parties :
- Prompt Engineering. Tu apprendras à écrire des prompts efficaces pour les LLMs, une compétence clé pour orienter le comportement de ton Assistant IA.
- Techniques de collaboration avec git & Github. Tu découvriras comment travailler en équipe dev avec des `branches` et des `pull requests`. C’est un système que tu utiliseras pour tous tes projets dev, alors sois attentif !

### `08 Multi-modal Inference`

Conférence matinale en 2 parties :
- Multi-modal Inference. Tu apprendras à envoyer des fichiers avec du texte à traiter par les LLMs.
- JavaScript dans Rails. Apprends à utiliser Stimulus et `importmap` pour implémenter des fonctionnalités JavaScript et utiliser des bibliothèques tierces dans Rails.

Ensuite, chaque groupe devra présenter la version actuelle de son Assistant IA devant la class
