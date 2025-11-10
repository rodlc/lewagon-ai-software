const TOKEN = "pk.eyJ1IjoidGhvbWFzbWVyY3VyaW90IiwiYSI6ImNtMG1obGFvMzAxeGoyanNkNHFlc3U0ZGsifQ.jcstO48zdD3G7v-xCgCINg";

function injectMap(lng, lat) {
  // TODO #5: Create the map
  // - Create a map using the Mapbox API
  // - Add a marker to the map at the coordinates
  mapboxgl.accessToken = `${TOKEN}`;
  const map = new mapboxgl.Map({
    container: "map",
    style: "mapbox://styles/mapbox/streets-v9",
    center: [lng, lat],
    zoom: 12
  });
  new mapboxgl.Marker()
    .setLngLat([lng, lat])
    .addTo(map);
}

const displayCoordinates = (longitude, latitude) => {
  // TODO #6: Insert the coordinates into the DOM
  // - Display the coordinates in the element where the coordinates will be displayed
  const outputElement = document.querySelector("p");
  outputElement.innerText = `${latitude}, ${longitude}`;
  injectMap(longitude, latitude);
};

const showMapAndCoordinates = (userInput) => {
  // TODO #3: Construct the URL (with apiKey & userInput)
  // and make the fetch request to the mapbox API
  const url = `https://api.mapbox.com/search/geocode/v6/forward?q=${encodeURIComponent(userInput)}&access_token=${TOKEN}`;

  fetch(url)
    .then(response => response.json())
    .then((data) => {
      console.log(data);
      // TODO #4: Extract the coordinates from the parsed JSON response (longitude, latitude)
      // Use these coordinates to call the displayCoordinates and injectMap functions
      const firstFeature = data.features[0];
      const coordinates = firstFeature.geometry.coordinates;

      const longitude = coordinates[0];
      const latitude = coordinates[1];
      displayCoordinates(longitude, latitude);
    });
};

// ### ### ### ### ###
// ### START HERE! ###
// ### ### ### ### ###
// TODO #1: Select the form element
// TODO #2: Add event listener to the form that:
// - Prevents the default form submission behavior
// - Gets the user input
// - Calls the showMapAndCoordinates function with the userInput
// (It should be a string!) as an argument

const form = document.querySelector("form");
form.addEventListener("submit", (event) => {
  event.preventDefault();
  const userInput = document.querySelector("#address").value;
  showMapAndCoordinates(userInput);
});
