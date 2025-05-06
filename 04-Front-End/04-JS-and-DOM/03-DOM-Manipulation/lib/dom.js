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
};

// /!\ DO NOT CHANGE THIS LINE - TEST PURPOSES
const borisesEmail = getEmail();

// Ex 2. Make the email input field have your personal email address in it
//      (e.g. 'myemail@gmail.com')
//      If it works, you should see your email written in the input field


// Ex 3. Replace the email hint (next to the input) with 'This is my email now'
//       Use a <strong> tag to emphasize the text



// Ex 4. Add the .blue CSS class to the tr element inside of the table header (<thead>)



// Ex 5. Count the total number of rows in the table body
//       Make the function teamCount() return it
const teamCount = () => {
  // TODO: return the number of teams
};

// /!\ DO NOT CHANGE THIS LINE - TEST PURPOSES
const teamCountBeforeAddition = teamCount();

// Ex 6. Say there is a 15th team added to the table.
//       Add a row at the bottom, this new team should have zero points.



// Ex 7. Retrieve and return the point value for the first team
//       (Rugby Club Toulonnais)
const firstTeamPoints = () => {
  // TODO: return the points
};

// /!\ DO NOT CHANGE THIS LINE - TEST PURPOSES
const points = firstTeamPoints();


// Ex 8. Change the background color of the tr element inside of the
// table header (<thead>) to #DDF4FF



// Ex 9. Remove the "Email:" label from the DOM




// Checking exercise answers. DO NOT MODIFY THIS LINE
runChallenges(borisesEmail, teamCountBeforeAddition, points);
