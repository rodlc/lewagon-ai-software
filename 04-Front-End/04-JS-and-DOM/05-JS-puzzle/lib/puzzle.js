// Select all the tiles
const tiles = document.querySelectorAll('td');
const rows = document.querySelectorAll("table tr");
// const cells = rows[0].cells;
// for (const cell of cells) {
//   console.log(cell.textContent);
// }

const canMove = (tile) => {
  // TODO: Check if a tile has an empty neighbour
  const tileCellIndex = tile.cellIndex;
  const tileRowIndex = tile.parentNode.rowIndex;

  // const correctCellIndex = document.querySelector(".empty").cellIndex;
  // const correctTileIndex = document.querySelector(".empty").parentNode.rowIndex;
  // console.log(correctCellIndex);
  // console.log(correctTileIndex);

  // if (correctCellIndex === tileCellIndex && correctTileIndex === tileRowIndex) {
  //   return true;
  const cellLeftIndex = tileCellIndex - 1;
  const cellRightIndex = tileCellIndex + 1;

  if (tileRowIndex !== 0) {
    const cellabove = rows[tileRowIndex - 1].cells[tileCellIndex];
    if (cellabove.classList.contains('empty')) {
      return true;
    }
  }
  if (tileRowIndex !== 3) {
    const cellbelow = rows[tileRowIndex + 1].cells[tileCellIndex];
    if (cellbelow.classList.contains('empty')) {
      return true;
    }
  }
  if (cellLeftIndex >= 0) {
    const cellLeft = rows[tileRowIndex].cells[cellLeftIndex];
    if (cellLeft.classList.contains('empty')) {
      return true;
    }
  }

  if (cellRightIndex <= 2) {
    const cellRight = rows[tileRowIndex].cells[cellRightIndex];
    if (cellRight.classList.contains('empty')) {
      return true;
    }
  }
  return false;
};

const moveTile = (element) => {
  document.querySelector(".empty").innerText = element.innerText;
  document.querySelector(".empty").classList.remove("empty");
  element.innerText = "";
  element.classList.add("empty");
};

const checkIfPlayerWins = () => {
  // TODO: Check if player has won
  const test = document.querySelectorAll("td");
  const result = [];
  const expected = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15"];
  for (let i = 0; i < test.length; i += 1) {
    result.push(test[i].innerText);
    if (expected[i] !== result[i]) {
      return false;
    }
  }
  return alert("You win!");
};

// Add event listener on each tile - Do not change the following
tiles.forEach((tile) => {
  tile.addEventListener('click', () => {
    if (canMove(tile)) {
      moveTile(tile);
      checkIfPlayerWins();
    }
  });
});
