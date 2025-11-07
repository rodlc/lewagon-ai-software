// TODO: Write your gambling application here.
const scratchcards = document.querySelector("#scratchcards");
const balance = document.querySelector("#balance");
let balanceAmount = 100;

scratchcards.addEventListener("click", (event) => {
  balanceAmount -= 10;
  const clickedCard = event.target.closest(".scratchcard");

  if (clickedCard.dataset.scratched === "true") {
    console.log("Card already scratched!");
  } else {
    const cardAmount = parseInt(clickedCard.dataset.amount, 10);
    balanceAmount += cardAmount;
    clickedCard.classList.add("scratched");
    clickedCard.dataset.scratched = "true";
    clickedCard.textContent = `${cardAmount}`;
    balance.textContent = `${balanceAmount}`;
  }
});
