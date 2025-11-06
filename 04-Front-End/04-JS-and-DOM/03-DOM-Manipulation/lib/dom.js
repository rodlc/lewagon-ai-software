/* eslint-disable no-multiple-empty-lines */
/* eslint-disable prefer-const */
/* eslint-disable import/extensions */
import runChallenges from "../spec/examiner.js";

// INSTRUCTIONS - PLEASE READ!!
// Here are some challenges. Solve them from top to bottom

// **Each time** you complete a challenge, please commit and push!
// This is good practice. Each time you make some progress in software
// development, you want to save a snapshot.


// Ex 1. Retrieve whatever is currently written in the email input field and
//       make the function getEmail() return it
const getEmail = () => {
  // TODO: return the email
  const element = document.getElementById("email");
  return element.attributes.value.value;
};

// /!\ DO NOT CHANGE THIS LINE - TEST PURPOSES
const borisesEmail = getEmail();

// Ex 2. Make the email input field have your personal email address in it
//      (e.g. 'myemail@gmail.com')
//      If it works, you should see your email written in the input field
const emailField = document.querySelector("#email").attributes.value;
emailField.textContent = "rodolphe@lecoent.net";
// emailField.dataset.sample = "rodolphe@lecoent.net";

// Ex 3. Replace the email hint (next to the input) with 'This is my email now'
//       Use a <strong> tag to emphasize the text
const emailHint = document.getElementById("email-hint");
emailHint.innerHTML = '<strong>This is my email now</strong>';

// Ex 4. Add the .blue CSS class to the tr element inside of the table header (<thead>)
const theadClass = document.querySelector("thead > tr");
theadClass.classList.add("blue");

// Ex 5. Count the total number of rows in the table body
//       Make the function teamCount() return it
const teamCount = () => {
  // TODO: return the number of teams
  const tableCount = document.querySelectorAll("tbody > tr");
  return tableCount.length;
};

// /!\ DO NOT CHANGE THIS LINE - TEST PURPOSES
const teamCountBeforeAddition = teamCount();

// Ex 6. Say there is a 15th team added to the table.
//       Add a row at the bottom, this new team should have zero points.
const lastListElement = document.querySelector("tbody");
lastListElement.insertAdjacentHTML("beforeend", "<td>15</td><td>My team </td><td>0</td>");

// Ex 7. Retrieve and return the point value for the first team
//       (Rugby Club Toulonnais)
const firstTeamPoints = () => {
  // TODO: return the points
  const firstTeamScore = document.querySelector('tbody tr:first-child td:last-child').textContent;
  return parseInt(firstTeamScore, 10);
};

// /!\ DO NOT CHANGE THIS LINE - TEST PURPOSES
const points = firstTeamPoints();

// Ex 8. Change the background color of the tr element inside of the
// table header (<thead>) to #DDF4FF
const tableColor = document.querySelector("thead > tr");
tableColor.style.backgroundColor = "#DDF4FF";
console.log(tableColor);


// Ex 9. Remove the "Email:" label from the DOM
document.querySelector("label").remove();



// Checking exercise answers. DO NOT MODIFY THIS LINE
runChallenges(borisesEmail, teamCountBeforeAddition, points);
