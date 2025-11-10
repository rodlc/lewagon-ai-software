const displayAlertOnButtonClick = () => {
  // TODO: Select the big green button
  // TODO: Bind the `click` event to the button
  // TODO: On click, display `Thank you!` in a JavaScript alert!
  const button = document.querySelector(".btn.btn-lg.btn-success");

  button.addEventListener("click", (event) => {
    button.insertAdjacentHTML("afterend", "<p>Thank you!</p>");
  });
};

displayAlertOnButtonClick(); // Do not remove!
