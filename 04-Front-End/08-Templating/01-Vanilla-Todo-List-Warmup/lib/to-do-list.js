const todos = [
  { title: "Code a to-do list", done: false },
  { title: "Eat breakfast", done: true },
  { title: "Do some exercise", done: false },
  { title: "Water the plants", done: true }
];

/* ------------------------------------------------------------------ */
/* RENDER FUNCTION                                                    */
/* ------------------------------------------------------------------ */
const renderTodos = (items) => {
  // 1. Sélectionne le conteneur prévu dans index.html
  const container = document.getElementById("todosContainer");
  container.innerHTML = ""; // On vide (idempotent)

  // 2. Pour chaque tâche, crée les nœuds nécessaires
  items.forEach(({ title, done }) => {
    // • Wrapper
    const card = document.createElement("div");
    card.className = "shadow-sm rounded px-4 py-3 mb-2 border d-flex";

    // • Checkbox
    const checkbox = document.createElement("input");
    checkbox.type = "checkbox";
    checkbox.className = "d-flex form-check-input me-1";
    checkbox.checked = done; // coche/décoche suivant le booléen

    // • Titre
    const text = document.createElement("div");
    text.textContent = title;

    // • On assemble
    card.appendChild(checkbox);
    card.appendChild(text);
    container.appendChild(card);
  });
};

/* ------------------------------------------------------------------ */
/* INITIALISATION                                                     */
/* ------------------------------------------------------------------ */
document.addEventListener("DOMContentLoaded", () => renderTodos(todos));
