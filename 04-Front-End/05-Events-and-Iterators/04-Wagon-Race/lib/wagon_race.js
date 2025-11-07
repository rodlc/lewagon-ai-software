const race = document.querySelector(".racer-table");
const player1Row = document.querySelector("#player1-race");
const player2Row = document.querySelector("#player2-race");

const moveWagon = (playerRow) => {
  const activeWagon = playerRow.querySelector(".active");

  activeWagon.classList.remove("active");
  const nextWagon = activeWagon.nextElementSibling;

  if (nextWagon) {
    nextWagon.classList.add("active");
  } else {
    activeWagon.insertAdjacentHTML("afterEnd", `<td class="active"></td>`);
    console.log("Le joueur a atteint la fin !");
  }
};

document.addEventListener("keydown", (event) => {
  const keyPressed = event.key.toLowerCase();

  if (keyPressed === "p") {
    moveWagon(player1Row);
  } else if (keyPressed === "q") {
    moveWagon(player2Row);
  }
});

race.addEventListener("click", (event) => {
  const clickedWagon = event.target.closest(".active");
  if (clickedWagon) {
    const parentRow = clickedWagon.parentElement;
    moveWagon(parentRow);
  }
});
