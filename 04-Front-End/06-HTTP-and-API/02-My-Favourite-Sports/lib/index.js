// TODO: write your code here!
const cards = document.querySelectorAll(".clickable");

cards.forEach((card) => {
  card.addEventListener("click", (event) => {
    card.classList.toggle("active");
  });
});
