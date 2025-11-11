const apiUrl = "https://api.dictionaryapi.dev/api/v2/entries/en/";
const pageDefinition = document.getElementById("definition");

const displayDefinition = (event) => {
  event.preventDefault();
  const word = document.getElementById("word").value;
  // TODO: Display your word's definition with an AJAX call instead of the console.log()
  fetch(`${apiUrl}${word}`)
    .then(response => response.json())
    .then((data) => {
      // Todo: Insert results into the list
      const firstDefinition = data[0].meanings[0].definitions[0].definition;
      pageDefinition.innerText = firstDefinition;
    });
};

const form = document.getElementById("fetch-word");
form.addEventListener("submit", displayDefinition);
