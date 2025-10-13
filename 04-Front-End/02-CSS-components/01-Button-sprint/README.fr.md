## Contexte et objectifs

Travailler sur trois designs de bouton différents (deux imposés et un de ton choix). Voici [l'objectif à atteindre](http://lewagon.github.io/html-css-challenges/08-button-sprint/). Le code HTML est déjà dans `index.html`

```html
<a href="#" class="btn-medium">Write a story</a>
<a href="#" class="btn-treehouse">Start now</a>
<a href="#" class="btn-yours">Your call</a>
```

Tu dois maintenant rédiger le CSS associé dans `button.css`.

N'oublie pas de **forcer le rafraîchissement** de ton navigateur (`Cmd + Shift + R`) pour vider le cache si ta page n'affiche pas le code le plus récent !

## Organiser ton CSS avec des fichiers de composants

À partir de maintenant, tu organiseras ton code avec **un fichier CSS pour chaque composant**. Un bouton est un composant standard, comme un avatar, une card (carte), une liste, une barre de navigation, un onglet, un formulaire, etc. Chacun de ces composants mérite son propre fichier CSS. L'architecture de ton projet devrait ressembler à ça :

```
.
├── css
│   ├── components
│   │   ├── avatar.css
│   │   ├── banner.css
│   │   └── button.css
│   └── style.css
└── index.html
```

Puis dans `style.css` :

```css
/* Importer tous les fichiers de composants */
@import url("components/avatar.css");
@import url("components/banner.css");
@import url("components/button.css");

/* Règles de style générales pour les polices et les couleurs */
body {
  margin: 0;
  font-family: 'Open Sans', sans-serif;
}
h1, h2, h3 {
  font-family: Raleway, Helvetica, sans-serif;
}
```

Ensuite, tu as seulement besoin d'**un lien unique vers `style.css`** dans ton fichier HTML :

```html
<head>
  <link rel="stylesheet" href="css/style.css">
</head>
```

## N'oublie pas le survol (hover) et le focus

N'oublie pas de créer les états `.btn:hover` et `.btn:focus` pour chacun de tes boutons. 👥 L'état `:focus` est essentiel pour les utilisateurs qui naviguent au clavier avec Tab.

## Espacement autour d'un lien

Tu auras peut-être remarqué que `margin-top` ou `margin-bottom` ne s'applique pas à tes liens par défaut. Ceci est dû au fait que la balise `<a>` est un élément `inline`. Si tu veux appliquer l'espacement vertical aux liens, tu dois transformer leur propriété d'affichage (`display`) en `inline-block` ou `block`.
