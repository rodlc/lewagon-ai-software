## Contexte et objectifs

Dans ce challenge, nous allons apprendre à utiliser `fetch` en JavaScript pour faire des requêtes HTTP vers l'API d'une IA. L'IA peut sembler vraiment sophistiquée et informatique 🤖 mais la vérité est que la plupart des entreprises d'IA exposent une API que nous pouvons utiliser pour interagir avec leurs modèles d'IA, comme nous le faisons avec n'importe quelle autre API.

Nous allons utiliser [Hugging Face](https://huggingface.co/) car leur API est gratuite et propose de nombreux modèles avec lesquels nous pouvons jouer. Hugging Face est une entreprise qui fournit une plateforme pour partager et utiliser des modèles d'apprentissage automatique, et ils ont de nombreux modèles qui sont entraînés sur différentes tâches, telles que la génération de texte, la génération d'images, et plus encore.

## Obtenir ta clé API

D'abord, tu devras créer un compte sur Hugging Face et obtenir ta clé API. Tu peux le faire en allant sur [le site web de Hugging Face](https://huggingface.co/join) et en t'inscrivant. Tu devras ensuite vérifier ton adresse e-mail, alors assure-toi de vérifier ta boîte de réception. Une fois que tu as un compte, tu peux aller dans tes paramètres et trouver ta clé API.

Pour ce faire, clique sur ton avatar en haut à droite. Choisis ensuite "Access Tokens" dans le menu déroulant. Clique sur "+ Create new token" et donne-lui un nom (comme "LW Challenge"). Sous "Token type", tu dois choisir "Read", ce qui donnera au token les permissions nécessaires. Ensuite, clique sur "Create token". Copie le token et sauvegarde-le dans un endroit sûr, car tu ne pourras plus le voir à nouveau.

## Écrire le JS

Maintenant que tu as ta clé API, tu peux l'utiliser pour faire des requêtes vers l'API de Hugging Face. Nous allons utiliser la fonction `fetch` comme tu en as l'habitude pour faire ces requêtes.

Ouvre le fichier `index.html`. Tu verras une interface simple avec une entrée de texte et un bouton.

Lance :

```bash
serve
```

Ouvre ton navigateur et va sur `http://localhost:8000`. Tu devrais voir l'interface.

Maintenant, va dans `lib/index.js` et tu verras une fonction appelée `getAnswer`. C'est dans cette fonction que tu écriras ton code pour faire la requête vers l'API de Hugging Face. Une partie de la fonction est déjà configurée selon [la documentation officielle](https://huggingface.co/docs/inference-providers/providers/hf-inference). Regarde les commentaires et vois ce que tu dois faire.

1. Il y a une ligne où tu voudras coller ta clé API. Assure-toi de remplacer le placeholder par ta véritable clé API.
2. Complète la fonction `getAnswer` pour qu'elle récupère réellement la réponse de l'API et l'insère dans le DOM. Tu voudras peut-être faire un `console.log` de la réponse pour comprendre son format.
3. Ajoute un event listener au formulaire pour que lorsque l'utilisateur soumet le formulaire, il appelle la fonction `getAnswer`.

Quand tu auras fini, tu devrais pouvoir taper une question dans le champ de saisie, cliquer sur le bouton et voir la réponse de l'IA en dessous du champ de saisie ! Plutôt cool 🕶️

Pour aller plus loin, tu peux essayer d'utiliser différents modèles de Hugging Face en changeant le `model` dans l'appel `fetch`. Tu peux trouver une liste de modèles [ici](https://huggingface.co/models). Assure-toi simplement de choisir un modèle adapté à la génération de texte.