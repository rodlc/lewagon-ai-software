## Contexto y Objetivos

¡Bienvenidos al Debugging Dojo!

Imagina que estás trabajando con un compañero de trabajo en un proyecto donde necesitan implementar varios métodos. Pero tiene problemas con la sintaxis y la lógica. Tu tarea es ayudarle a "debug" su código y hacer que funcione correctamente.

Por supuesto, hay muchas formas diferentes de implementar estos métodos, pero tu compañero ya ha comenzado y no quieres ofenderle y reescribir todo desde cero. En su lugar, trabaja con el código que ha proporcionado y haz pequeños ajustes para que funcione como se pretende.

## Especificaciones

Abre el archivo `lib/debugging_dojo.rb` y arregla el código para que se satisfechen todas las pruebas en `rake`. Puedes ejecutar las pruebas con el comando:

```bash
rake
```

Y, si quieres probar cualquier código, ya hemos preparado un archivo `lib/your_scratchpad.rb` para ti. Este archivo no es parte del `rake`, así que puedes usarlo para probar cualquier código que quieras. Puedes ejecutarlo con el comando:

```bash
ruby lib/your_scratchpad.rb
```

Siéntete libre de agregar cualquier código que desees a este archivo. También puedes usar declaraciones `puts` para imprimir los valores de las variables y ver lo que está sucediendo en cada paso.

## Cómo Depurar

1. **Lee los mensajes de error**: Los mensajes de error te darán una pista de lo que está mal. Busca el número de línea y el tipo de error. A veces podrías ver un `NoMethodError`, lo que significa que estás intentando llamar un método que no existe. Otras veces podrías ver un `NameError`, que significa que estás intentando usar una variable que aún no ha sido definida. Y a veces podrías ver un `SyntaxError`, lo que significa que hay un problema con la sintaxis de tu código. Siempre lee el mensaje de error cuidadosamente e intenta entender lo que te está diciendo. Y, si te da un número de línea, ve a esa línea y mira el código.
2. **Revisa la sintaxis**: Asegúrate de que la sintaxis de tu código sea correcta. Busca comas, paréntesis u otros errores de sintaxis faltantes.
3. **Revisa la lógica**: Asegúrate de que la lógica de tu código sea correcta. Si no tiene sentido, intenta descubrir qué se supone que debe hacer el código y cómo debería funcionar.
4. **Usa declaraciones `puts`**: Si aún tienes problemas, agrega declaraciones `puts` a tu código para imprimir los valores de las variables en diferentes puntos del código. Esto puede ayudarte a ver dónde están las cosas malas.
5. **Googlea**: Si aún no entiendes, intenta buscar en Google el mensaje de error o el problema que estás teniendo. Puedes revisar StackOverflow para ver si alguien más ha tenido el mismo problema.

Ten en cuenta que siempre puedes consultar la documentación de Ruby. Es un gran recurso para entender cómo funcionan diferentes métodos y clases. Puedes encontrar la documentación de Ruby [aquí](https://ruby-doc.org/).

## Más Allá

Si realmente no sigues para adelante, puedes probar `pry-byebug`, que es una herramienta de debugging que te permite recorrer tu código línea por línea y ver qué está sucediendo en cada paso. Ya deberías haberlo instalado el día de la configuración.

Para usarlo, pon esta línea al principio de tu archivo:

```ruby
require "pry-byebug"
```

Luego puedes insertar **puntos de interrupción** en cualquier parte de tu código:

```ruby
binding.pry
```

Esto pausará la ejecución de tu código en ese punto. Tu Terminal abrirá entonces una "pry console", que funciona y se ve igual que `irb`. Pero, es como si hubieras iniciado `irb` justo en ese momento de tu código. Puedes entonces inspeccionar los valores de las variables, llamar métodos y ver qué está sucediendo en ese punto.

Para continuar la ejecución de tu código, escribe `exit` en la consola pry. También puedes usar `next` y `continue` para recorrer tu código línea por línea.

***

Y aquí hay un [gran artículo extenso sobre el arte fino de la resolución de problemas](https://www.autodidacts.io/troubleshooting/).
