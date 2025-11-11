// TODO: Autocomplete the input with AJAX calls.

const apiUrl = "https://dictionary.lewagon.com/autocomplete/";
const listElement = document.getElementById("results");
const search = document.getElementById("search");

const autoComplete = (event) => {
  if (!search.value) return;
  listElement.textContent = "";
  const stem = document.getElementById("search").value;
  // event.preventDefault();

  // TODO: Display your word's definition with an AJAX call instead of the console.log()
  fetch(`${apiUrl}${stem}`)
    .then(response => response.json())
    .then((data) => {
      // Todo: Insert results into the list
      const firstCompletions = Array.from(data.words).slice(0, 5);
      firstCompletions.forEach((word) => {
        listElement.insertAdjacentHTML("beforeend", `<li class="list-group-item"> ${word}</li>`);
      });
    });
};

search.addEventListener("keyup", autoComplete);
