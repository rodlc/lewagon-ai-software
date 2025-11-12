const displayAlertOnButtonClick = () => {

  const button = document.querySelector(".btn-primary");

  button.addEventListener("click", (event) => {
    preventDefault();
    button.innerText = "Coming soon!";
  });
};

displayAlertOnButtonClick(); // Do not remove!
