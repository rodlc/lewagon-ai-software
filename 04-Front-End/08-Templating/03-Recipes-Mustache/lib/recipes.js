/* eslint-disable import/no-unresolved */
import Mustache from "mustachejs";

const recipes = [
  {
    name: "Coq au Vin",
    ingredients: ["chicken", "red wine", "bacon", "mushrooms", "onions", "garlic"],
    difficulty: 7
  },
  {
    name: "Ratatouille",
    ingredients: ["eggplant", "zucchini", "bell peppers", "tomatoes", "onions", "garlic"],
    difficulty: 3
  },
  {
    name: "Croissant",
    ingredients: ["flour", "butter", "yeast", "sugar", "salt"],
    difficulty: 9
  },
  {
    name: "Bouillabaisse",
    ingredients: ["fish", "shellfish", "tomatoes", "fennel", "onions", "garlic", "saffron"],
    difficulty: 10
  }
];

// TODO: Your code goes below:
document.addEventListener("DOMContentLoaded", () => {
  const template = document.querySelector("#recipeCardTemplate").innerHTML;
  const rendered = Mustache.render(template, { recipes }); // ← objet
  const container = document.getElementById("recipesContainer");
  container.innerHTML = rendered; // injection
});
