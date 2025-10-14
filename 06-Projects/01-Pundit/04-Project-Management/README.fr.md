### 5. GitHub Project

Un [tableau Kanban](https://fr.wikipedia.org/wiki/Kanban) est un outil de gestion de projet agile conçu pour visualiser le travail, suivre la progression et maximiser l’efficacité (ou le flow).

Draft Github Projects – Pour configurer un kanban sur Github, il faut d’abord avoir créé le repo et ajouté tous les collaborateurs. Ensuite, un membre peut utiliser [ce tableau](https://github.com/orgs/lewagon/projects/117) comme base. Suis les instructions [ici](https://docs.github.com/en/issues/planning-and-tracking-with-projects/creating-projects/copying-an-existing-project) pour copier et ajouter ce tableau à ton repo. Note que Github ne copie pas les cartes, tu devras donc les ajouter toi-même. Tu peux copier/coller les cartes pour démarrer ou partir de zéro. Aussi, Github utilise la syntaxe markdown pour formater le texte (titres, styles, cases à cocher). Ce n’est pas obligatoire, mais ça peut améliorer la lisibilité. Plus d’infos [ici](https://guides.github.com/features/mastering-markdown/).

Chaque tâche doit être formulée sous forme de **User Story**, par exemple : `En tant qu'utilisateur, je peux voir une liste de tous les défis`.

Dans le champ de priorité, vous pouvez utiliser la méthode MoSCoW pour classer vos user stories en fonction de leur importance : Must have (Doit avoir), Should have (Devrait avoir), Could have (Pourrait avoir), Won't have (N'aura pas). Cette méthode vous aidera à vous concentrer sur les user stories les plus importantes en premier.

Dans le champ de parcours, vous pouvez inclure le verbe, le chemin, le contrôleur et l'action, comme : `GET /challenges challenges index`, tout comme vous l'avez dans la feuille de calcul.

Assurez-vous d'utiliser la [fonction d'assignation sur GitHub](https://docs.github.com/en/issues/tracking-your-work-with-issues/using-issues/assigning-issues-and-pull-requests-to-other-github-users?ref=codebldr) pour identifier le membre de l'équipe qui travaillera sur chaque user story.

À partir de ce point, vous pouvez commencer à diviser les tâches. **Passez du temps sur la configuration, car tout sera plus simple si vous le faites correctement dès le début**.

### Nom de domaine

Pour rendre ton MVP plus légitime, personnalise ton nom de domaine au lieu d'utiliser l'URL gratuite `.herokuapp.com`. On te recommande d'utiliser [Namecheap](https://www.namecheap.com/) pour acheter ton nom de domaine. Suis [ce guide](https://www.lewagon.com/blog/buying-a-domain-on-namecheap-and-pointing-it-to-heroku) pour acheter et configurer ton nom de domaine, puis [ce guide](https://www.lewagon.com/blog/setting-up-a-free-ssl-certificate-on-heroku) pour configurer ton certificat SSL.

Le Wagon est un partenaire officiel de GitHub depuis 2015 et, grâce à ce partenariat, tu peux accéder au [Github Student Developer Pack](https://education.github.com/pack). Retrouve toutes les infos [ici](https://kitt.lewagon.com/redeem_github_student_developer_pack). Namecheap a une [offre spéciale](https://education.github.com/pack?sort=popularity&tag=Domains) s'il s'agit d'un nom de domaine de premier niveau `.me`.

### Chaîne Slack d'équipe

Il peut être utile d'avoir un endroit où centraliser l'ensemble des communications, des ressources partagées et des notes concernant le projet. Utilise une chaîne nommée `#batch-<user.batch_slug>-your_project_name` avec ton équipe. Ajoute des signets à la chaîne avec les liens suivants pour ton projet :

1. Tableau Kanban
2. Heroku
3. Schéma de base de données
4. Dépôt Github
5. Figma

Important : Cette chaîne **ne doit pas** être utilisée en remplacement des tickets, qui doivent toujours être créés normalement.
