### GitHub Project
Un [tablero Kanban](https://es.wikipedia.org/wiki/Kanban) es una herramienta de gestión de proyectos ágil diseñada para ayudar a visualizar el trabajo, rastrear el progreso y maximizar la eficiencia (o flujo).

Draft de Proyectos de Github - Para configurar tu tablero Kanban en Github, primero debes haber creado el repositorio y agregado a todos los colaboradores. Luego, un miembro del equipo puede usar [este tablero](https://github.com/orgs/lewagon/projects/117) como base para tu tablero de proyecto. Sigue las instrucciones [aquí](https://docs.github.com/en/issues/planning-and-tracking-with-projects/creating-projects/copying-an-existing-project) para ver cómo copiar y agregar el tablero al repositorio de tu proyecto. Dos cosas a tener en cuenta: Github no copia las tarjetas del tablero original, por lo que tendrás que agregarlas tú mismo. Siéntete libre de copiar/pegar las tarjetas para comenzar o simplemente empezar desde cero. En segundo lugar, Github utiliza la sintaxis markdown para el formato de texto como encabezados, estilo de fuente y casillas de verificación. No es obligatorio, pero puede ser agradable agregar formato a tus tarjetas. Puedes leer más sobre ello [aquí](https://guides.github.com/features/mastering-markdown/).

Cada tarea debe estar en el formato de una **Historia de Usuario** como: `Como usuario, puedo ver una lista de todos los challenges`.

En el campo de prioridad, puedes usar el método MoSCoW para priorizar tus historias de usuario: Debe tener, Debería tener, Podría tener, No tendrá. Esto te ayudará a enfocarte primero en las historias de usuario más importantes.

En el campo de ruta, puedes incluir el verbo, la ruta, el controlador y la acción, como: `GET /challenges challenges index`, tal como lo tienes en la hoja de cálculo.

Asegúrate de usar la [función de asignación en GitHub](https://docs.github.com/en/issues/tracking-your-work-with-issues/using-issues/assigning-issues-and-pull-requests-to-other-github-users?ref=codebldr) para etiquetar al miembro del equipo que trabajará en cada historia de usuario.

A partir de este punto, puedes comenzar a dividir las tareas. **Dedica tiempo a la configuración, porque todo será más simple si lo haces correctamente desde el principio**.

### Nombre de dominio
Tener un nombre de dominio personalizado hará que tu MVP parezca mucho más legítimo que usar la URL gratuita `.herokuapp.com`. Recomendamos usar [Namecheap](https://www.namecheap.com/) para comprar tu nombre de dominio. Sigue [esta guía](https://www.lewagon.com/blog/buying-a-domain-on-namecheap-and-pointing-it-to-heroku) para comprar y configurar tu dominio personalizado. Luego sigue [esta guía](https://www.lewagon.com/blog/setting-up-a-free-ssl-certificate-on-heroku) para configurar tu certificado SSL.

Ten en cuenta que Le Wagon es un socio oficial de GitHub desde el 2015. Por lo tanto, nuestra asociación te permite canjear un acceso al [Paquete de Desarrollo para Estudiantes de Github](https://education.github.com/pack). Encontrarás toda la información [aquí](https://kitt.lewagon.com/redeem_github_student_developer_pack). Hay una [oferta especial](https://education.github.com/pack?sort=popularity&tag=Domains) para Namecheap si el nombre de dominio se registra con un TLD `.me`.


### Canal del Equipo en Slack
Es bueno tener una ubicación centralizada donde toda la comunicación, el intercambio de recursos y las notas relacionadas con tu proyecto se puedan guardar. Usa un canal llamado `#batch-<user.batch_slug>-your_project_name` con tu equipo. Agrega marcadores al canal con los siguientes enlaces para tu proyecto:

1. Tablero Kanban
2. Heroku
3. Esquema de base de datos
4. Repositorio Github
5. Figma


Importante: este canal **no debe** usarse como un sistema alternativo de emisión de tickets. Deberás continuar levantando los tickets de la manera normal.
