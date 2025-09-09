## Contexto y objetivos

En este ejercicio, aprenderemos a usar `fetch` en JavaScript para hacer solicitudes HTTP a la API de una IA. La IA puede sonar realmente sofisticada y computacional 🤖, pero la verdad es que la mayoría de las empresas de IA exponen una API que podemos usar para interactuar con sus modelos de IA, tal como lo hacemos con cualquier otra API.

Usaremos [Hugging Face](https://huggingface.co/) porque su API es gratuita y tiene muchos modelos con los que podemos jugar. Hugging Face es una empresa que proporciona una plataforma para compartir y usar modelos de aprendizaje automático, y tienen muchos modelos que están entrenados en diferentes tareas, como generación de texto, generación de imágenes, y más.

## Obtén tu clave API

Primero, necesitarás crear una cuenta en Hugging Face y obtener tu clave API. Puedes hacerlo yendo al [sitio web de Hugging Face](https://huggingface.co/join) y registrándote. Luego necesitarás verificar tu dirección de correo electrónico, así que asegúrate de revisar tu bandeja de entrada. Una vez que tengas una cuenta, puedes ir a tu configuración y encontrar tu clave API.

Para hacer esto, haz clic en tu avatar en la esquina superior derecha. Luego elige "Access Tokens" del menú desplegable. Haz clic en "+ Create new token" y dale un nombre (como "LW Challenge"). En "Token type", debes elegir "Read", lo que dará al token los permisos necesarios. Luego haz clic en "Create token". Copia el token y guárdalo en un lugar seguro, ya que no podrás verlo de nuevo.

## Escribe el JS

Ahora que tienes tu clave API, puedes usarla para hacer solicitudes a la API de Hugging Face. Usaremos la función `fetch` tal como estás acostumbrado para hacer estas solicitudes.

Abre el archivo `index.html`. Verás una interfaz simple con una entrada de texto y un botón.

Ejecuta:

```bash
serve
```

Abre tu navegador y ve a `http://localhost:8000`. Deberías ver la interfaz.

Ahora, dirígete a `lib/index.js` y verás una función llamada `getAnswer`. Esta función es donde escribirás tu código para hacer la solicitud a la API de Hugging Face. Parte de la función ya está configurada según [la documentación oficial](https://huggingface.co/docs/inference-providers/providers/hf-inference). Revisa los comentarios y ve qué necesitas hacer.

1. Hay una línea donde querrás pegar tu clave API. Asegúrate de reemplazar el marcador de posición con tu clave API real.
2. Completa la función `getAnswer` para que realmente obtenga la respuesta de la API y la inserte en el DOM. Es posible que quieras hacer `console.log` de la respuesta para entender su formato.
3. Agrega un event listener al formulario para que cuando el usuario envíe el formulario, llame a la función `getAnswer`.

Cuando hayas terminado, ¡deberías poder escribir una pregunta en el campo de entrada, hacer clic en el botón y ver la respuesta de la IA debajo del campo de entrada! Bastante genial 🕶️

Yendo más allá, puedes intentar usar diferentes modelos de Hugging Face cambiando el `model` en la llamada `fetch`. Puedes encontrar una lista de modelos [aquí](https://huggingface.co/models). Solo asegúrate de elegir un modelo que sea adecuado para la generación de texto.