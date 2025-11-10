// Todo: Use the Fork Api to get a
// filtered list of restaurants, depending on
// the category selected (and as a bonus, the location)

const searchForm = document.getElementById("searchForm");

// Todo: select the HTML elements you need
const restaurantsList = document.getElementById("restaurant-list");

searchForm.addEventListener("submit", (event) => {
  // Todo: Find the category selected and build the URL you will send your request to
  restaurantsList.innerHTML = "";
  event.preventDefault();
  const userCategory = document.querySelector('input[name="category"]:checked').value;
  const userLocation = document.getElementById('location').value;

  let url;
  if (userLocation) {
    url = `https://the-fork.api.lewagon.com/api/v1/restaurants?category=${userCategory}&location=${userLocation}`;
  } else {
    url = `https://the-fork.api.lewagon.com/api/v1/restaurants?category=${userCategory}`;
  }

  // Todo: Replace "the-endpoint-url" with the URL you built
  fetch(`${url}`)
    .then(response => response.json())
    .then((data) => {
      // Todo: Insert results into the list
      console.log(data);
      data.forEach((restaurant) => {
        restaurantsList.insertAdjacentHTML(`beforeend`, `<li class="list-group-item">${restaurant.name} in ${restaurant.address}</li>`);
      });
    });
});
