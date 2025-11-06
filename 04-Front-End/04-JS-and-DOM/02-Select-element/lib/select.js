/* eslint-disable no-multiple-empty-lines */
/* eslint-disable prefer-const */
/* eslint-disable import/extensions */

import runChallenges from "../spec/select_examiner.js";

// TODO 1. Open the `index.html` file and set an id on the France <li>
const franceElement = () => {
  // TODO 2: select the France list item and return it!
  const element = document.getElementById("one");
  return element;
};

// DO NOT MODIFY   THIS LINE. It checks your answer.
runChallenges(franceElement);
