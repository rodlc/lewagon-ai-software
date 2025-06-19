## AI Week

Vous passerez les prochaines sessions avec votre groupe projet à travailler sur un **Assistant IA** pour un **Persona** ayant un **Objectif**. Par exemple, Wott est un assistant IA pour les **étudiants qui apprennent à coder**.

Faites un brainstorming avec votre groupe et créez un ticket pour valider votre idée avec un enseignant.

### Démonstrations

Vous présenterez votre travail (en production, pas de démo sur `localhost` !) pendant les sessions **Multi-modal Inference** et **Tools & Agents**. C'est important de fixer des échéances !

### Partie I

Travaillez sur les étapes suivantes et **validez-les avec un enseignant** au début de la session **avant** de créer votre app Rails et de passer à la Partie II. Cela vous fera gagner beaucoup de temps.

#### 1 - User stories

Dupliquez ce [tableur](https://docs.google.com/spreadsheets/d/1Kh4r-r5ZDyaWSfJdvW1NQJEfqt-wO3ExFR9SVp29lpY/edit?gid=0#gid=0) (un par équipe) et invitez vos coéquipiers à collaborer.

![duplicate](https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/user-stories/duplicate.png)
![rename](https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/user-stories/rename.png)

Commencez par réfléchir aux **parcours utilisateur** que vous allez montrer lors de la démo. Il existe de nombreux cas d’usage pour un assistant IA, mais essayez de les réduire aux parcours minimums viables pour résoudre un problème spécifique.

<details><summary markdown='span'>Voir solution</summary>

- 1 parcours utilisateur pour créer un enregistrement en base (ex. un challenge pour Wott)
- 1 parcours pour poser une question à un LLM dans le contexte d’un enregistrement
- 1 parcours pour joindre un fichier à une question pour un LLM
- 1 parcours pour relancer une question à un LLM (conversation)

</details>

Chaque parcours utilisateur peut contenir plusieurs **user stories** : écrivez-les dans le tableur en utilisant la bonne terminologie. Une fois terminé, créez un ticket pour les valider avec un enseignant.

Vous pouvez dessiner rapidement des croquis des différentes pages (papier/stylo) avec les éléments principaux. Cela vous aidera à visualiser les parcours. Attention, pas besoin d’être trop précis à ce stade ! C’est un sprint : gérez bien votre temps et vos ressources.

#### 2 - Schéma de base de données

Dessinez votre schéma de base de données en utilisant [notre outil](https://kitt.lewagon.com/db/new) et **créez un ticket pour le valider avec un enseignant**. Ne dessinez que le strict minimum pour faire fonctionner votre app. Respectez les conventions (noms pluriels pour les tables, etc. – cf. cours sur les BDD).

#### 3 - Routes

Retournez sur le tableur des user stories et ajoutez les informations suivantes :
- Route : Verbe + path
- Action
- Contrôleur

Créez un ticket pour les valider avec un enseignant. C’est bon ? Place au `rails new` !

### Partie II

Avant de vous répartir les tâches, mettez en place le projet **ensemble**. Le **développeur principal** (et lui seul) doit :

#### 1. Créer le projet Rails avec Postgres

Utilisez le template minimal de Le Wagon, qui inclut déjà une bonne configuration front-end :

```bash
cd ~/code/<user.github_nickname>
rails new \
  -d postgresql \
  -m https://raw.githubusercontent.com/lewagon/rails-templates/master/minimal.rb \
  CHANGE_THIS_TO_YOUR_RAILS_APP_NAME
```

Encore une fois, **seul le développeur principal** le fait ! Pas toute l’équipe...

#### 2. Pousser le projet sur Github

```bash
cd your-rails-app-name
gh repo create --public --source=.
git push origin master
```


#### 3. Ajouter vos coéquipiers comme collaborateurs sur Github

Allez dans les [paramètres de votre repo Github](https://github.com/<user.github_nickname>/rails-airbnb-clone/settings/collaboration) et ajoutez vos coéquipiers comme **collaborateurs**.

Les autres membres peuvent maintenant **cloner** le projet. ⚠️**Attention, utilisez l’URL `SSH`**⚠️

Ensuite, ils doivent exécuter :

```bash
bundle install
rails db:create db:migrate
```

#### 4. Déployer sur Heroku

Même si l'app est vide, déployez sur Heroku **dès le premier jour**, puis déployez à chaque nouvelle fonctionnalité.

```bash
heroku create ai-assistant-<user.lower_github_nickname> --region=REMPLACEZ_AVEC_REGION # (eu, us, etc.)
heroku config:set WEB_CONCURRENCY=1
git push heroku master
heroku run rails db:migrate
```

### 5. Tableau Kanban

Un [tableau Kanban](https://fr.wikipedia.org/wiki/Kanban_(d%C3%A9veloppement)) est un outil de gestion agile pour visualiser le travail, suivre la progression et maximiser l’efficacité. Voici trois brouillons pour démarrer avec Trello, Github Projects ou Notion :

1. **Trello** – Copiez [ce tableau](https://trello.com/b/WB3fRTj2), ajoutez vos coéquipiers, et commencez à importer vos user stories et tâches (classées par priorité).

2. **Github Projects** - Pour configurer ton tableau kanban sur Github, tu devras d'abord avoir créé ton dépôt et ajouté tous les collaborateurs. Un membre de ton équipe pourra ensuite utiliser [ce tableau](https://github.com/orgs/lewagon/projects/117) comme base du tableau de ton projet. Suis les instructions [ici](https://docs.github.com/en/issues/planning-and-tracking-with-projects/creating-projects/copying-an-existing-project) pour apprendre à copier et ajouter le tableau au dépôt de ton projet. Deux éléments à prendre en compte : 1. Github ne copie pas les cards depuis le tableau d'origine, tu devras donc les ajouter toi-même. N'hésite pas à copier/coller les cards ou commence de zéro. 2. Github utilise la syntaxe markdown pour la mise en forme du texte (titres, style de police, cases à cocher). Ce n'est pas obligatoire, mais il peut être sympa de mettre en forme des cards. Plus d'infos [ici](https://guides.github.com/features/mastering-markdown/).

3. **Notion** – Dupliquez [cette page Notion](https://www.notion.so/lewagon/Project-Weeks-a3961a7da7324637bea441832becb3ad), ajoutez vos coéquipiers et commencez à saisir vos user stories. Suivez [ce guide](https://www.notion.com/help/embed-and-connect-other-apps#web-bookmarks) pour les bookmarks Web. Si vous débutez sur Notion, consultez [cette page](https://www.notion.com/help/start-here).

Ensuite, vous pouvez répartir les tâches. **Prenez le temps de bien configurer le projet, cela simplifiera tout le reste**.

### Quelques conseils de gestion de projet

#### Kick-off

Lorsque vous répartissez le travail, vous constaterez que certaines tâches dépendent d’autres... Voici quelques conseils :

Commencez toujours par les **modèles de base** de votre app (ceux sans clés étrangères). Une fois intégrés, il est plus facile de travailler sur les fonctionnalités annexes. Pour démarrer, deux groupes :

**groupe #1 - Démarrage modèle** :
- Intégrer le modèle principal avec actions `index/show` et `new/create`.

**groupe #2 - Démarrage front-end** :
- Créer un layout propre avec navbar/footer
- Construire une page d’accueil simple et attrayante

Une fois ces deux groupes terminés (comptez environ 2h), fusionnez votre travail sur Github et répartissez les autres tâches.

#### Organisation des tâches

Parmi la dizaine de user stories, **certaines sont plus importantes que d'autres**. Priorisez-les pour obtenir un MVP en fin de semaine !

#### Coder en silo : du modèle à la vue

Lorsque vous développez une fonctionnalité, **faites-le de manière complète, du modèle à la vue HTML/CSS**. Exemple : création d’un challenge :

*Modèle* :
- Générer un modèle `Challenge` avec migration.
- Ajouter associations et validations.
- Tester le modèle dans la console Rails.

*Routing* :
- Ajouter les routes `new/create` dans `routes.rb`.

*Contrôleur* :
- Ajouter les actions `new` et `create` dans `ChallengesController`.

*Vues* :
- Coder le formulaire dans `views/challenges/new.html.erb`.
- Rediriger vers la `show` avec un message de confirmation.

*Liens* :
- Ajouter un lien dans la navbar pour créer un Challenge.

*HTML/CSS* :
- Utiliser Bootstrap pour les inputs des formulaires et les boutons.
- Centrer le contenu avec `container`, titres clairs, etc.
- Refactoriser le HTML avec des partials si nécessaire.

**Codez parfaitement, du modèle à la vue**

- Testez vos associations et validations dans la console Rails.
- Ne négligez pas la vue. Soignez vos formulaires (Bootstrap), vos listes (grille propre).
- Utilisez des partials pour rendre le code lisible et maintenable.

