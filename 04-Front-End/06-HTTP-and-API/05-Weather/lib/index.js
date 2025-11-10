// --- 1. CONSTANTES ET SÉLECTION DES ÉLÉMENTS DU DOM ---

// Remplacez par votre clé API obtenue sur OpenWeatherMap
const API_KEY = "e5f1cb84a43b500cf7cdfffcb05721f2";

// Sélecteurs adaptés à votre HTML
const searchForm = document.querySelector("form"); // Sélectionne la balise <form>
const searchInput = document.querySelector("#input"); // L'ID de votre champ de texte est "input"

const dateElement = document.querySelector("#date");
const cityElement = document.querySelector("#city");
const descriptionElement = document.querySelector("#description");
const temperatureElement = document.querySelector("#temperature");
const iconElement = document.querySelector("#icon");


// --- 2. FONCTION DE MISE À JOUR DE L'INTERFACE (UI) ---

/**
 * Met à jour tous les éléments de la page avec les données météo reçues.
 * @param {object} weatherData - L'objet de données provenant de l'API.
 */
const updateWeatherUI = (weatherData) => {
  // Formate la date pour un affichage lisible
  const today = new Date();
  const options = {
    weekday: 'long', month: 'long', day: 'numeric', year: 'numeric'
  };
  dateElement.textContent = today.toLocaleDateString('fr-FR', options);

  // Met à jour les informations météo
  cityElement.textContent = weatherData.name;
  descriptionElement.textContent = weatherData.weather[0].description;
  temperatureElement.textContent = `${Math.round(weatherData.main.temp)}°C`;

  // Construit l'URL de l'icône et met à jour l'image
  const iconId = weatherData.weather[0].icon;
  iconElement.src = `https://openweathermap.org/img/w/${iconId}.png`;
  iconElement.alt = weatherData.weather[0].description;
};


// --- 3. FONCTION DE RÉCUPÉRATION DES DONNÉES (FETCH) ---

/**
 * Récupère les données météo pour une ville donnée et met à jour l'interface.
 * @param {string} city - Le nom de la ville.
 */
const fetchWeatherByCity = (city) => {
  const url = `https://api.openweathermap.org/data/2.5/weather?q=${city}&appid=${API_KEY}&units=metric`;

  fetch(url)
    .then(response => response.json())
    .then((data) => {
      // L'API OpenWeatherMap retourne un code 'cod: 200' si la ville est trouvée
      if (data.cod === 200) {
        updateWeatherUI(data);
      } else {
        // Affiche une alerte si la ville n'est pas trouvée
        alert(data.message || "City not found. Please try again.");
      }
    })
    .catch((error) => {
      console.error("Error fetching weather:", error);
      alert("An error occurred while fetching the weather data.");
    });
};


// --- 4. GESTIONNAIRE D'ÉVÉNEMENT ---

/**
 * Gère la soumission du formulaire de recherche.
 */
const handleFormSubmit = (event) => {
  event.preventDefault(); // Empêche le rechargement de la page
  const city = searchInput.value;
  // On ne lance la recherche que si l'utilisateur a tapé quelque chose
  if (city) {
    fetchWeatherByCity(city);
  }
};


// --- 5. INITIALISATION ---

// Attache le gestionnaire d'événement au formulaire
searchForm.addEventListener("submit", handleFormSubmit);

// Affiche la météo pour une ville par défaut au chargement de la page
fetchWeatherByCity("Paris");
