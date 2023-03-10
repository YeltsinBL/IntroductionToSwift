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

`Funciones`: están compuestas por líneas de código que hacen una tarea especifica, agrupamos código para utilizarla en la ejecución de la app y realizar una lógica o acción.
- Podemos retornar dos valores en la función y agregarlas a una Tupla, que almacena valores en una o más variable.
- Los parámetros:
-- Si el parámetro de la función tiene dos nombres, el primer nombre se utiliza fuera de la función y el segundo nombre se utiliza dentro de la función.
-- Para utilizar las funciones sin escribir el nombre de los parámetros, en la creación de la función se debe poner un [_] antes del nombre del parámetro (_ nameParameter: Type).
-- El parámetro Variadic es como si se enviara un array, acepta varios valores del mismo tipo (name: String...), los tres puntos al final significa que recibirá varios datos.
-- Se puede actualizar los valores del parámetro, se debe agregar un 'inout' antes del tipo del parámetro y cuando se llame a la función se agregara un '&' antes del valor del parámetro.

`Clases y Estructura`: class and struct
- Las clases pueden tener herencia mientras que las estructuras no.
- Las clases son 'ReferenceType' y las estructuras son 'ValueType'
--ValueType: es un tipo cuyo valor se copia cuando es asignado a una variable o constante, o cuando lo pasamos a una función. Los struct y los enum son ValueType.
-- ReferenceType: cuando tenemos una instancia de una clase y la asignamos a varias variables, cada variable apunta a la misma referencia en memoria: un cambio en una variable repercute en las demás variables porque todas apuntan a la misma referencia en memoria.
- En las clases de debe de inicializar para dar un valor a todas las propiedades cuando las instanciamos, en cambio; en la estructura no se debe de inicializar porque el compilador de swift lo crea por si mismo.
- En la clase se puede utilizar el 'deInit' que se utiliza para liberar recursos en memoria, mientras que en la estructura no se puede.
- Las clases y estructuras utilizan las propiedades, instancias, métodos, extensiones y protocolos.

`Propiedades`: asocian valores con una class, enum y struct
- Instancia: Para utilizar esta propiedad, primero se debe de instanciar y luego asignar un valor.
- Tipo (static): no se debe de instanciar para utilizar.
- Computadas: no almacenan un valor, actuán de getter and setter.
- Observers: observa y responde cada que un valor de la propiedad cambia.
-- WillSet: antes que el valor de la propiedad cambie.
-- Didset: cuando el valor de la propiedad a cambiado.

`Métodos`: son lo mismos que las funciones a nivel de sintaxis, la diferencia es que los métodos existen dentro se los tipos.
- Método de instancia: se debe de crear una instancia para utilizarlo.
- Método de Tipo: no es necesario instanciar el tipo para utilizarlo, al crear el método debe de iniciar con 'static'.

`Closures`: son bloques de funcionalidad, hay código entre llaves.
- Los closure son parecidos a las funciones, solo que se crean directo en variables o constantes.
- SortedBy: ordena un array, acepta un closure que espera dos argumentos del mismo tipo y retorna un booleano, será True si el primer valor debe aparecer antes que el segundo valor y False si es de caso contrario.
- Se puede utilizar una función dentro de un closure.
- TrailingClosure: cuando se necesita pasar un closure a una función y es el último parámetro se transforma en un Trailing Closure, el parámetro se convierte en llaves para hacer código y se ejecutara al final de la función, puede haber múltiples parámetros del tipo Closure.

`Enums`: definen un tipo común para un grupo de valores relacionados y permite trabajar con estos valores de una manera segura dentro del código.
- Los enums son de tipo ValueType, su valor se copia.
- Con el Switch podemos ejecutar una lógica diferente para los distintos casos que hay en el enum.
- Protocolo Caselterable: iteramos todos los casos del enum.
-- Al lado del nombre del enum se debe de agregar: 'CaseIterable'.
-- Usamos la propiedad 'allCases' (nameEnum.allCases).
-- Solo se utiliza a partir de la versión Swift 5.2.
- Associated Value: guarda valores de otro tipo con los casos del enum, al pasarle un valor y guardarlo en una variable o constante se le llama 'Associated Value'.
-- Son útiles para dar mas información a cada case
- Raw Values: los casos de enum pueden estar preparados con valores por defecto llamados 'Raw Values' los cuales son del mismo tipo.

`Herencia`: una clase hereda métodos y propiedades de otra clase para poder sobreescribirla.
- Las funciones con 'final' no es pueden sobreescribir.

`Protocolos`: es una interfaz, donde añadimos una serie de requerimientos para todos los tipos que lo conformen.
- Todo aquel que utilice un protocolo que puede ser una 'class','struct' y 'enum'; debe de implementar lo que esta en su interfaz.
- Si una clase hereda de otra, primero se pone la clase de la que hereda y luego el protocolo, esto no pasa con las 'struct' que solo se pone el protocolo.
- Los protocolos conforman variables de propiedad o de tipo.
- También especifica si una propiedad es 'get' o 'set'.
- Al crear una extensión del protocolo, ya no es necesario volver a implementarlo en una 'class','struct' y 'enum' porque ya lo conforma.

`Genéricos`: el código genético nos permite escribir código mas flexible, funciones reusables y tipos genéricos que acepten cualquier tipo. 
- En una función genérico el tipo que se agrega entre '<>' debe ser el mismo que está dentro de los parámetros.
- Los tipos genéricos: son 'class', 'struct' y 'enum' qué pueden trabajar con  cualquier tipo igual que los 'arrays' y 'dictionary'. 

Guía de referencia en el canal de [SwiftBeta](https://www.youtube.com/watch?v=mQTLSf76jS4&list=PLeTOFRUxkMcozbUpMiaHRy8_GjzJ_9tyi&index=1)