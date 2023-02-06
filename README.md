# Introducción a Swift
## _Ejercicios básicos sobre la programación con Swift._

`Constantes y Variables`: 
- Variables (var): pueden cambiar su valor luego de haberlas creado.
- Constantes (let): no se puede cambiar  el valor luego de haberlas creado.
- Typealias: se pueden cambiar los nombres a los tipos para asignar a las variables o constantes.

`Opcionales`:
- se pueden crear variables y/o constantes de tipo opcional con valor nil (nulo en Swift).
- Para obtener el valor del opcional sin su etiqueta opcional, se puede utilizar el: 'if let', '.map' y/o 'Force UnWrap (!)'.

`Colecciones`: es una agrupación de valores.
- Array: almacena valores del misto tipo en una lista ordenada, el mismo valor puede aparecer varias veces y en posiciones diferentes.
- Set: nos aseguramos que los valores no sean repetidos pero el orden puede variar.
- Dictionary: almacenan asociaciones entre keys del mismo tipo y valores del mismo tipo, no tienen un orden en las posiciones.
-- Cuando pedimos el valor de un Dictionary este es de tipo opcional porque puede ser que el valor del elemento sea nil o que la key ingresada no exista.

`Flujo de control`:
- IF: acepta los operadores relacionales y lógicos, el operador lógico '&&' se puede reemplazar por la ',' dentro de la condición.
- Guard: es un early return:
-- Nos ayudan a salir del ‘scope’ cuando no se cumple una condición, son muy parecidos a al IF.
-- También podemos extraer el valor de un opcional como se hace con el 'if let'.
- Switch: cuando tenemos un valor y los comparamos con distintos casos, si no cumple con alguno se ejecuta un caso por defecto.
- For-in: se utiliza dentro de una secuencia como los elementos del array y diccionario, y los caracteres de un String.
- While: empieza evaluando una condición; si la condición es true, la ejecuta el código hasta que la condición sea false.
-- También esta el 'repeat while' que ejecuta el código y luego evalúa la condición hasta que sea false.