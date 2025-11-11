const displayAlertOnButtonClick = () => {
  
  const button = document.querySelector(".btn-primary");

  button.addEventListener("click", (event) => {
    button.innerText = "Coming soon!";
  });
};

displayAlertOnButtonClick(); // Do not remove!
