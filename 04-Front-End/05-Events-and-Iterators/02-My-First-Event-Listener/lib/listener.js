// TODO: React to a click on the button!
const button = document.getElementById("clickme");

button.addEventListener("click", (event) => {
  button.classList.add("disabled");
  button.textContent = 'Bingo!';
  return button;
});
