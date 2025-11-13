const todos = [
  { title: "Code a to-do list", done: false },
  { title: "Eat breakfast", done: true },
  { title: "Do some exercise", done: false },
  { title: "Water the plants", done: false }
];

// TODO: Use the template in the `index.html` to dynamically generate a list based on `todos` array
document.addEventListener("DOMContentLoaded", () => {
  // 1) références utiles
  const template = document.querySelector("#todoItemTemplate");
  const results = document.getElementById("todosContainer");

  // 2) rendu
  todos.forEach((item) => {
    const clone = template.content.cloneNode(true);

    clone.querySelector(".title").textContent = item.title;
    clone.querySelector("input[type=checkbox]").checked = item.done;

    results.appendChild(clone);
  });
});
