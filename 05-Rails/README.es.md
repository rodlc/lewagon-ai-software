¡Por fin, Rails!

## Primera semana - Rails 101

Esta es la última "semana real" en Kitt con desafíos día a día. Desde la próxima semana, comenzarás a trabajar en proyectos más largos, ya sea un AI Assistant o tu propio proyecto personal. Por ahora, nos sumergiremos en la arquitectura de una nueva app Rails y trataremos de entender qué está pasando. **Construiremos una app Rails por día**.

### `01 Routing, Controladores y Vistas`

Tu primer día te introducirá al flujo estándar de Rails: `routing > controller > view` sin añadir la capa modelo y explicando los `params`. Durante el día, transformarás antiguos desafíos de Ruby de la Semana 1 en apps Rails.

### `02 Modelos & CRUD`

¡Aquí vuelve nuestro viejo amigo Active Record! **Una de las lecciones más importantes de Rails.** Tu coach principal programará las 7 acciones CRUD desde cero e introducirá el routing `resources`. ¡Pon atención! 🤓

### `03 Routing Avanzado`

Hoy agregarás un segundo modelo a una app Rails construyendo un clon de Yelp con dos modelos, restaurantes y reseñas. La clase de la mañana trata sobre ir **Más allá del CRUD** con routing avanzado y validaciones en Rails.

### `04 Assets en Rails`

Aprende la mejor configuración para implementar Bootstrap SCSS + librerías front-end, y cambia de `form_with` a `simple_form_for` usando la configuración de Simple Form Bootstrap.

Conoce el pipeline de assets.

Para los ejercicios, comenzarás un proyecto de dos días para construir una app de watch list, con 3 modelos: `Movie`, `Bookmark` y `List`.
Deberás seguir cuidadosamente la configuración front-end para trabajar en una app con buen diseño.

### `05 Hosting & Subida de Imágenes`

La clase de esta mañana tiene dos partes:
**Hosting**: Despliegue en [Heroku](http://heroku.com/)

**Subida de Imágenes**: Hospedaremos imágenes en [Cloudinary](http://cloudinary.com/), usando [ActiveStorage](https://guides.rubyonrails.org/v6.0.1/active_storage_overview.html). El curso también explica cómo proteger tus claves API usando la gema [dotenv](https://github.com/bkeepers/dotenv). **Escucha bien si no quieres que te roben datos bancarios en Github.**

Además, ¡**quiz!** ¡El último! No estés triste 😢

Haremos un repaso para comprobar que has entendido todos los conceptos clave de Rails.

## Segunda parte - Semana IA

¡**Semana IA**! Para la segunda parte, trabajarás en equipos de proyecto de 3 o 4 personas. El objetivo es empezar desde cero y construir un Asistente IA para una Persona y un Objetivo — tendrás 5 bloques para avanzar lo más que puedas con tu Asistente IA.

- Primera demo a mitad del proyecto - Si es bootcamp full-time, miércoles (5pm)
- **Demo oficial el último día!** Si es bootcamp full-time, viernes (5pm)

**No habrá live-code esta semana.** Pero igual tendrás clases matutinas sobre IA y temas avanzados de Rails. ¡Así que madruga! Aquí un resumen de lo que se verá:

### `06 Introducción a los LLM`

Clase matutina en 2 partes:
- Introducción a los LLM. Construirás tu primera funcionalidad basada en IA usando [RubyLLM](https://rubyllm.com/) y entenderás los fundamentos de los LLM para ingenieros de software.
- Autenticación con la gema [Devise](https://github.com/plataformatec/devise).

### `07 Ingeniería de Prompts`

Clase matutina en 2 partes:
- Ingeniería de prompts. Aprenderás a escribir prompts efectivos para LLM, una habilidad clave para moldear el comportamiento de tu Asistente IA.
- Técnicas de colaboración con git & Github. Descubrirás cómo trabajar en equipo usando `branches` y `pull requests`. Es un sistema que usarás en todos los proyectos que hagas, así que presta atención.

### `08 Inferencia Multi-modal`

Clase matutina en 2 partes:
- Inferencia multi-modal. Aprenderás a enviar archivos junto con texto para que los LLM los procesen.
- JavaScript en Rails. Aprende a usar Stimulus y `importmap` para implementar nuevas funcionalidades JavaScript y usar librerías de terceros en Rails.

Luego, cada grupo debe mostrar la versión actual de su Asistente IA frente a la clase.

### `09 UX Conversacional`

Permite que los usuarios den seguimiento a una primera respuesta LLM proporcionando el historial de la conversación al LLM. Aprenderás a construir una UX conversacional en tu app Rails usando Turbo streams.

### `10 Herramientas & Agentes`

Clase matutina en 2 partes:
- Herramientas & Agentes. Aprenderás a escribir herramientas para que el LLM decida cuándo usarlas, y para que el LLM llame APIs o consulte tu base de datos cuando sea relevante.
- WebSockets & ActionCable. Aprenderás a hacer streaming de respuestas en tiempo real para una mejor experiencia de usuario.

### Preparación de proyectos (fin de semana)

¡Has hecho cosas increíbles — estamos muy orgullosos de ti!

Ahora, es tiempo del Gran Final — tus proyectos. Tómate un tiempo el fin de semana para pensar en tus proyectos:

- Escribe tus historias de usuario (no más de 15).
- Dibuja bocetos de tus vistas principales en papel.
- Comienza a construir tu esquema de base de datos en [kitt.lewagon.com/db](http://kitt.lewagon.com/db).
- Empieza a pensar en tus rutas.

Si logras hacer la mayoría de esto, ahorrarás mucho tiempo el lunes y podrás empezar tus proyectos sin complicaciones.
