ale = User.create(name: 'Alejandro Leiva', email: 'ale@paraffin.com',
                  password: 'password')
cris = User.create(name: 'Cristopher "Tofu" Gómez', email: 'cris@paraffin.com',
                   password: 'password')
carlos = User.create(name: 'Carlos "Carlangas" Riquelme',
                     email: 'carlos@paraffin.com', password: 'password')
pablo = User.create(name: 'Pablo "Pabs" Abara', email: 'pablo@paraffin.com',
                    password: 'password')
ceci = User.create(name: 'Cecilia Ramallo', email: 'cecy@paraffin.com',
                   password: 'password')
vane = User.create(name: 'Vanesa Pulgar', email: 'vane@paraffin.com',
                   password: 'password')
isa = User.create(name: 'Isabel Vega', email: 'isa@paraffin.com',
                  password: 'password')
juan = User.create(name: 'Juan Santos', email: 'juan@paraffin.com',
                   password: 'password')
nacho = User.create(name: 'Ignacio Heck', email: 'nacho@paraffin.com',
                    password: 'password')
ronny = User.create(name: 'Ronald Tichauer', email: 'ronny@paraffin.com',
                    password: 'password')
valentin = User.create(name: 'Valentin Jadot', email: 'valentin@paraffin.com',
                       password: 'password')
manu = User.create(name: 'Manuel Pérez', email: 'manu@paraffin.com',
                   password: 'password')

fin = Curriculum.create(name: 'FIN: Fullstack Developer',
                        description: 'El perfil que proponemos es el de un desarrollador web, con conocimientos tanto de back-end como de front-end, que se encarga de coordinar las acciones de desarrollo de ambas partes. Para que llegues a ser.dev hemos creado 3 ciclos en los que podrás avanzar a tu ritmo y afianzar tu aprendizaje. Si tienes algún conocimiento previo y no quieres realizar una actividad, puedes marcarla como completada y continuar con las siguientes. ¿Te animas a ser.dev?')

learning_units = []

learning_units.push(LearningUnit.create(name: 'VSCode - Introducción',
                                        description: 'VSCode es uno de los editores de código más populares y utilizados por los devs. Aprende a instalarlo y configurarlo para que puedas trabajar en él.', image_url: '/src/public/LearningUnit.jpg'))
learning_units.push(LearningUnit.create(name: 'Terminal - Usos básicos',
                                        description: '¡Dile adiós al mouse de toda la vida! Manejar la terminal de un computador es una característica esencial para cualquier dev. Aprende los comandos básicos y practica hasta adquirir fluidez.', image_url: '/src/public/LearningUnit.jpg'))
learning_units.push(LearningUnit.create(
                      name: 'Docker - Introducción y creación de un contenedor', description: 'Docker es una herramienta que permite a los devs desplegar aplicaciones en entornos de prueba controlados sin necesidad de instalar ninguna dependencia, pues tendrás todo lo que necesitas en un mismo contenedor.', image_url: '/src/public/LearningUnit.jpg'
                    ))
learning_units.push(LearningUnit.create(
                      name: 'Docker - Crear una app de Rails en Docker', description: 'Sigue el paso a paso de esta guía para que puedas crear tu primera app de Rails en Docker. Aprender sobre el Dockerfile y el Gemfile. Finalmente, admira la magia que puede realizar docker compose.', image_url: '/src/public/LearningUnit.jpg'
                    ))
learning_units.push(LearningUnit.create(
                      name: 'Docker - Ejecutar comandos dentro del contenedor', description: 'Ejecutar comandos dentro de un contenedor de Docker es mucho más fácil de lo que parece. Familiarízate con los comandos más básicos y luego podrás desenvolverte fluidamente en tu aplicación.', image_url: '/src/public/LearningUnit.jpg'
                    ))
learning_units.push(LearningUnit.create(name: 'Git - init, add, commit',
                                        description: 'Git es el sistema de control de versiones por excelencia, utilizado en la industria tech. Aprende desde lo más básico, creando tu primer repositorio y realizando tu primer commit. ', image_url: '/src/public/LearningUnit.jpg'))
learning_units.push(LearningUnit.create(name: 'Git - push, pull',
                                        description: 'Conoce dos de los comandos más utilizados de Git y entiende sus diferencias. Push permite actualizar una rama remota con su rama local correspondiente. Pull es su opuesto: permite extraer y fusionar una rama remota en su local.', image_url: '/src/public/LearningUnit.jpg'))
learning_units.push(LearningUnit.create(name: 'Git - branch, checkout',
                                        description: 'En git, una rama o branch es una versión del código del proyecto sobre el que estás trabajando. Las ramas permiten mantener el código en orden, manipulándolo de forma segura. Checkout te permitirá moverte de una rama a otra.', image_url: '/src/public/LearningUnit.jpg'))
learning_units.push(LearningUnit.create(name: 'Git - rebase, push force',
                                        description: 'En git, rebase es el proceso de mover o combinar una secuencia de commits a un nuevo commit base. Entiende la diferencia con merge y cuándo es mejor utilizar uno u otro. Aprende el uso correcto de push force.', image_url: '/src/public/LearningUnit.jpg'))
learning_units.push(LearningUnit.create(name: 'Git - Hacer buenos PR',
                                        description: 'Aprende lo que es un PR (pull request): Una petición que se hace al propietario de un repositorio original para incorporar los commits de un fork. Conoce las prácticas correctas para que tus PRs sean descriptivos, fáciles de entender y aporten valor a un proyecto.', image_url: '/src/public/LearningUnit.jpg'))
learning_units.push(LearningUnit.create(name: 'Github - Introducción',
                                        description: 'Github es una plataforma que nos permite guardar repositorios de Git. Crea y configura tu cuenta. Navega a través de los repositorios de otras personas, aprendiendo a forkearlos y clonarlos. Crea tu primer repositorio y enlázalo con tu proyecto local.', image_url: '/src/public/LearningUnit.jpg'))
learning_units.push(LearningUnit.create(name: 'Github - Github Actions',
                                        description: 'Github Actions es una plataforma de CI/CD (continuous integration and continuous delivery) que te permite automatizar tu construcción, testeo y deployment. Descubre cómo testear cada PR que llega a un repositorio, entre muchas otras cosa que puedes hacer. ', image_url: '/src/public/LearningUnit.jpg'))
learning_units.push(LearningUnit.create(name: 'Linters - Rubocop',
                                        description: 'Un linter es una herramienta que permite optimizar código fuente. Rubocop es el linter más recomendado de Ruby, que además permite formatear código y revisar su estilo. Aprende cómo configurarlo y personalizarlo.  ', image_url: '/src/public/LearningUnit.jpg'))
learning_units.push(LearningUnit.create(
                      name: 'Ruby - Estructuras básicas de datos (integers, float, strings, arrays, hashes)', description: 'Conoce los distintos tipos de datos que se manejan en un lenguaje de programación: Los integer, que representan al subconjunto de números enteros; los float, que representan a un número real estándar; los string, que representan texto; los array, que almacenan un conjunto de datos homogéneos y ordenados; y los hashes, parecidos a los array pero que se pueden indexar con objetos de cualquier tipo.', image_url: '/src/public/LearningUnit.jpg'
                    ))
learning_units.push(LearningUnit.create(
                      name: 'Ruby - Estructuras de control (loops, if-else, unless)', description: 'En un lenguaje de programación, las estructuras de control permiten modificar el flujo de ejecución de las instrucciones de un programa. Los loops o bucles repiten una cierta cantidad de veces un bloque de código. If-else maneja un flujo dependiendo del resultado de una condición. Unless es similar a if-else, pero sólo ejecuta el código si la condición es falsa.', image_url: '/src/public/LearningUnit.jpg'
                    ))
learning_units.push(LearningUnit.create(name: 'Ruby - Métodos y clases',
                                        description: 'Un método o función en Ruby tiene un conjunto de instrucciones que queremos se ejecuten en un momento determinado. Una clase es un plano o molde con la cual se crean objetos.', image_url: '/src/public/LearningUnit.jpg'))
learning_units.push(LearningUnit.create(name: 'Rails - Gemfile',
                                        description: 'Un Gemfile es un archivo creado para contener las distintas gemas que requiere un proyecto en Ruby. Las gemas son librerías que permiten escribir menos código, facilitando el trabajo de un dev. Aprende sobre la gran cantidad de gemas que existen, cuáles son las más utilizadas y cómo pueden simplificar tu trabajo.', image_url: '/src/public/LearningUnit.jpg'))
learning_units.push(LearningUnit.create(name: 'Rails - Arquitectura MVC',
                                        description: 'Aprende sobre MVC: Modelo Vista Controlador, un estilo de arquitectura de software que separa los datos de una aplicación, la interfaz de usuario y la lógica de control en tres componentes distintos.', image_url: '/src/public/LearningUnit.jpg'))
learning_units.push(LearningUnit.create(
                      name: 'Rails - Crear una app de Rails', description: 'Ruby on Rails es una de las herramientas más poderosas para desarrollar aplicaciones web. Empresas como Airbnb, Hulu, Shopify e incluso Github tienen sus aplicaciones construidas en Rails. Aprende a crear tu aplicación en Rails desde cero y conviértete en un dev profesional.', image_url: '/src/public/LearningUnit.jpg'
                    ))
learning_units.push(LearningUnit.create(name: 'Rails - Crear un controller ',
                                        description: 'En MVC, las clases del Controlador responden a la interacción del usuario e invocan a la lógica de la aplicación, que a su vez manipula los datos de las clases del Modelo y muestra los resultados usando las Vistas.', image_url: '/src/public/LearningUnit.jpg'))
learning_units.push(LearningUnit.create(name: 'Rails - Crear un modelo',
                                        description: 'El modelo en MVC representa las reglas y lógica de negocio. Este modelo es una implementación de la arquitectura Active Record, que en sí es un mapeo objeto-relacional.', image_url: '/src/public/LearningUnit.jpg'))
learning_units.push(LearningUnit.create(name: 'Rails - Routing',
                                        description: 'Las rutas juegan un rol importante para que pueda existir una conexión entre la petición del usuario y nuestra aplicación.', image_url: '/src/public/LearningUnit.jpg'))
learning_units.push(LearningUnit.create(name: 'Rails - Binding Pry',
                                        description: 'Pry es una consola para ruby que apunta a ser un reemplazo a IRB. En particular ofrece una mejor experiencia añadiendo funcionalidades que no están presentes en la consola built-in, como syntax highlighting, navegación en clases y debugging.', image_url: '/src/public/LearningUnit.jpg'))
learning_units.push(LearningUnit.create(
                      name: 'Rails - Estructura de una app de Rails', description: 'Comprende cómo está estructurada una aplicación de Rails, cuáles son los elementos clave que contiene y cómo se vinculan esos elementos entre sí.', image_url: '/src/public/LearningUnit.jpg'
                    ))
learning_units.push(LearningUnit.create(name: 'Rails - ActiveRecord / SQL',
                                        description: 'Active record es un patrón de arquitectura ​​​​ encontrado en aplicaciones que almacenan sus datos en Bases de datos relacionales.', image_url: '/src/public/LearningUnit.jpg'))
learning_units.push(LearningUnit.create(name: 'Rails - Vistas',
                                        description: 'Una vista en Rails es la que muestra los datos que está tratando de obtener del controlador. Lo muestra de la manera específica que tú decidas, normalmente en HTML, CSS y Javascript.', image_url: '/src/public/LearningUnit.jpg'))
learning_units.push(LearningUnit.create(name: 'Rails - Console',
                                        description: 'El comando de consola le permite interactuar con su aplicación Rails desde la línea de comandos.', image_url: '/src/public/LearningUnit.jpg'))
learning_units.push(LearningUnit.create(name: 'Rails - Services',
                                        description: 'El rol de un service es tener el código de un porción especifica de la lógica de negocio. El service es una clase que expone uno o varios métodos públicos para llevar a cabo tareas puntuales.', image_url: '/src/public/LearningUnit.jpg'))
learning_units.push(LearningUnit.create(
                      name: 'Rails - Database management (setup, seeding, reset)', description: 'Rails nos ofrece un mecanismo para poblar la base de datos con algunos registros iniciales cuando hagamos una nueva instalación de la aplicación.', image_url: '/src/public/LearningUnit.jpg'
                    ))
learning_units.push(LearningUnit.create(name: 'Rspec - Testear un modelo',
                                        description: 'Rspec es la herramienta de testing de Ruby, creada para realizar behaviour-driven development (BDD). Aprende a comprobar la validez de un modelo y de sus métodos, entre muchas otras cosas.', image_url: '/src/public/LearningUnit.jpg'))
learning_units.push(LearningUnit.create(name: 'Rspec - Testear un controller',
                                        description: 'Rspec es la herramienta de testing de Ruby, creada para realizar behaviour-driven development (BDD). Aprende a corroborar el resultado de las distintas acciones definidas en un controlador, entre muchas otras cosas.', image_url: '/src/public/LearningUnit.jpg'))
learning_units.push(LearningUnit.create(name: 'Rspec - Testear una vista',
                                        description: 'Rspec es la herramienta de testing de Ruby, creada para realizar behaviour-driven development (BDD). Aprende a revisar si tus vistas son renderizadas sin levantar errores, entre muchas otras cosas.', image_url: '/src/public/LearningUnit.jpg'))
learning_units.push(LearningUnit.create(name: 'Rails - Crear una API Rest',
                                        description: 'La API RESTful es una interfaz que dos sistemas de computación utilizan para intercambiar información de manera segura a través de Internet. La mayoría de las aplicaciones para empresas deben comunicarse con otras aplicaciones internas o de terceros para llevar a cabo varias tareas.', image_url: '/src/public/LearningUnit.jpg'))
learning_units.push(LearningUnit.create(
                      name: 'Rails - Documentación y testing endpoints con Rswag', description: 'Un Swagger es una especificación independiente del lenguaje que sirve para describir API REST. Conoce Rswag, una valiosa gema de Ruby que permite generar documentación e incluye una UI para explorar y testear operaciones.', image_url: '/src/public/LearningUnit.jpg'
                    ))
learning_units.push(LearningUnit.create(name: 'Rails - Manejo de errores',
                                        description: 'No te asustes si te aparece un error o exception en Rails, son más comunes de lo que crees y no siempre son tan malos como parecen. Aprende a capturarlos para que tu programa no se detenga y pueda ejecutar la acción adecuada.', image_url: '/src/public/LearningUnit.jpg'))
learning_units.push(LearningUnit.create(name: 'HMTL - Conceptos básicos',
                                        description: 'HTML, siglas en inglés de HyperText Markup Language, hace referencia al lenguaje de marcado para la elaboración de páginas web. ', image_url: '/src/public/LearningUnit.jpg'))
learning_units.push(LearningUnit.create(
                      name: 'Javascript - Conceptos básicos (variables, operadores, arrays, objects, functions)', description: 'JavaScript es un lenguaje de programación interpretado, dialecto del estándar ECMAScript. Se define como orientado a objetos, ​ basado en prototipos, imperativo, débilmente tipado y dinámico.', image_url: '/src/public/LearningUnit.jpg'
                    ))
learning_units.push(LearningUnit.create(name: 'Javascript - DOM',
                                        description: 'Document Object Model o DOM es esencialmente una interfaz de plataforma, o API de programación para documentos HTML, que proporciona un conjunto estándar de objetos para representar documentos HTML.', image_url: '/src/public/LearningUnit.jpg'))
learning_units.push(LearningUnit.create(
                      name: 'Javascript - asincronismo (event loop)', description: 'Asincronismo hace referencia al suceso que no tiene lugar en total correspondencia temporal con otro suceso.', image_url: '/src/public/LearningUnit.jpg'
                    ))
learning_units.push(LearningUnit.create(name: 'Javascript - promesas',
                                        description: 'Esencialmente, una promesa es un objeto devuelto al cual se adjuntan funciones callback , en lugar de pasar callbacks a una función. Llamamos a esto una llamada a función asíncrona.', image_url: '/src/public/LearningUnit.jpg'))
learning_units.push(LearningUnit.create(
                      name: 'Javascript - Client vs Server Side Rendering', description: 'La diferencia es que el renderizado del lado del servidor ocurre en el servidor de su sitio web, mientras que el renderizado del lado del cliente ocurre en los navegadores web de los visitantes.', image_url: '/src/public/LearningUnit.jpg'
                    ))
learning_units.push(LearningUnit.create(
                      name: 'NodeJS - qué es? npm, yarn (instalar paquetes)', description: 'Node.js es un entorno en tiempo de ejecución multiplataforma, de código abierto, para la capa del servidor basado en el lenguaje de programación JavaScript, asíncrono, con E/S de datos en una arquitectura orientada a eventos y basado en el motor V8 de Google.', image_url: '/src/public/LearningUnit.jpg'
                    ))
learning_units.push(LearningUnit.create(name: 'Linters - Prettier, esLint',
                                        description: 'Es una herramienta de programación; originalmente lint era el nombre de una herramienta de programación utilizada para detectar código sospechoso, confuso o incompatible entre distintas arquitecturas.', image_url: '/src/public/LearningUnit.jpg'))
learning_units.push(LearningUnit.create(name: 'React - components',
                                        description: 'React es una biblioteca Javascript de código abierto diseñada para crear interfaces de usuario con el objetivo de facilitar el desarrollo de aplicaciones en una sola página. Es mantenido por Facebook y la comunidad de software libre. En el proyecto hay más de mil desarrolladores libres.', image_url: '/src/public/LearningUnit.jpg'))
learning_units.push(LearningUnit.create(name: 'React - states',
                                        description: 'state representan los valores renderizados, es decir, lo que hay actualmente en la pantalla. Las llamadas a setState son asíncronas; no te fíes de que this. state refleje el nuevo valor inmediatamente después de llamar a setState.', image_url: '/src/public/LearningUnit.jpg'))
learning_units.push(LearningUnit.create(name: 'React - hooks',
                                        description: "Los Hooks son funciones que te permiten 'enganchar' el estado de React y el ciclo de vida desde componentes de función. Los hooks no funcionan dentro de las clases — te permiten usar React sin clases.", image_url: '/src/public/LearningUnit.jpg'))
learning_units.push(LearningUnit.create(name: 'React - Atom design',
                                        description: 'La metodología Atomic Design nos permite empezar a crear desde lo más pequeño a lo más grande, lo cual nos permite ofrecer varias ventajas: El diseño del producto, al ser trabajado de esta manera, es más coherente y ofrece así al usuario una experiencia consistente.', image_url: '/src/public/LearningUnit.jpg'))
learning_units.push(LearningUnit.create(name: 'NextJS - package.json',
                                        description: 'El archivo package-lock. json es un archivo generado automáticamente cuando se instalan paquetes o dependencias en el proyecto. Su finalidad es mantener un historial de los paquetes instalados y optimizar la forma en que se generan las dependencias del proyecto y los contenidos de la carpeta node_modules/', image_url: '/src/public/LearningUnit.jpg'))
learning_units.push(LearningUnit.create(
                      name: 'NextJS - estructura de una app de Next', description: 'Aprende cómo está estructurada una aplicación de Next, cuáles son los elementos clave que contiene y cómo se vinculan esos elementos entre sí.', image_url: '/src/public/LearningUnit.jpg'
                    ))
learning_units.push(LearningUnit.create(
                      name: 'NextJS - http requests y comando Fetch', description: 'HTTP se basa en un modelo solicitud / respuesta, de modo que hay dos tipos de mensajes HTTP: la solicitud y la respuesta. El navegador abre una conexión a un servidor y realiza una solicitud. El servidor procesa la solicitud del cliente y devuelve una respuesta. La figura siguiente ilustra este proceso.', image_url: '/src/public/LearningUnit.jpg'
                    ))
learning_units.push(LearningUnit.create(name: 'NextJS - useSWR',
                                        description: 'SWR (State While Revalidate) es un enlace de React que se utiliza para obtener datos del servidor. El SWR proporciona los datos de la caché y luego crea un servidor para validar, una vez que lo ha hecho, combina los datos para la consistencia de los datos.', image_url: '/src/public/LearningUnit.jpg'))
learning_units.push(LearningUnit.create(name: 'NextJS - rewrite rules',
                                        description: 'Las reescrituras te permiten asignar una ruta de solicitud entrante a una ruta de destino diferente.', image_url: '/src/public/LearningUnit.jpg'))
learning_units.push(LearningUnit.create(
                      name: 'NextJS - Client Side Rendering', description: 'El client-side rendering, también renderizado del lado del cliente, programación del lado del cliente o client-side scripting, es una técnica a la que recurren los desarrolladores web principalmente para realizar proyectos con contenido dinámico.', image_url: '/src/public/LearningUnit.jpg'
                    ))
learning_units.push(LearningUnit.create(
                      name: 'NextJS - Routing (páginas estáticas y dinámicas)', description: 'Las rutas en next.js se generan automáticamente a partir de la estructura de nuestra carpeta pages.', image_url: '/src/public/LearningUnit.jpg'
                    ))
learning_units.push(LearningUnit.create(name: 'Autenticación en la web',
                                        description: 'La autenticación Web es una comunicación entre el explorador Web y el servidor Web donde participan un pequeño número de encabezados del Protocolo de transferencia de hipertexto (HTTP) y mensajes de error.', image_url: '/src/public/LearningUnit.jpg'))
learning_units.push(LearningUnit.create(
                      name: 'Arquitectura - separación de back y front', description: 'En diseño de software el front end es la parte del software que interactúa con los usuarios y el back end es la parte que procesa la entrada desde el front end. La separación del sistema en front ends y back ends es un tipo de abstracción que ayuda a mantener las diferentes partes del sistema separadas.', image_url: '/src/public/LearningUnit.jpg'
                    ))
learning_units.push(LearningUnit.create(
                      name: 'Heroku - deploy de una app de rails', description: 'Heroku es una plataforma como servicio de computación en la Nube que soporta distintos lenguajes de programación. Heroku es propiedad de Salesforce.com.', image_url: '/src/public/LearningUnit.jpg'
                    ))
learning_units.push(LearningUnit.create(
                      name: 'Vercel - deploy de una app de next', description: 'Es una plataforma de nube estadounidense como empresa de servicios. La empresa mantiene el marco de desarrollo web Next.js. La arquitectura de Vercel se basa en Jamstack y las implementaciones se manejan a través de repositorios de Git.', image_url: '/src/public/LearningUnit.jpg'
                    ))
learning_units.push(LearningUnit.create(
                      name: 'React - Librerías de componentes (Material UI, PrimeFaces, etc.)', description: 'Una librería de componentes de IU puede ayudarte a poner en marcha tu aplicación React más rápido que construyendo tus propios componentes.', image_url: '/src/public/LearningUnit.jpg'
                    ))
learning_units.push(LearningUnit.create(name: 'CSS - Sass',
                                        description: 'Sass es un preprocesador de css que le da superpoderes a css como mixins, variables, nesting, partials, modulos, extensiones y operadores.', image_url: '/src/public/LearningUnit.jpg'))
learning_units.push(LearningUnit.create(name: 'CSS - mediaqueries',
                                        description: "Las media queries (en español 0'consultas de medios' s) son útiles cuando deseas modificar tu página web o aplicación en función del tipo de dispositivo (como una impresora o una pantalla) o de características y parámetros específicos (como la resolución de la pantalla o el ancho del viewport del navegador).", image_url: '/src/public/LearningUnit.jpg'))

cycle1 = Cycle.create(
  curriculum: fin,
  name: 'Fundamentos',
  order_number: 1,
  learning_goals_description: 'Conocer los fundamentos del editor de código y de la terminal.\nComprender la creación y el funcionamiento de contenedores en Docker.\nManejar comandos básicos de git y y crear PR (pull requests).\nPracticar el flujo de trabajo utilizando Github y Github Actions.',
  challenge_description: 'Crea tu propio proyecto desde cero, empleando buenas prácticas para acostumbrarte a ser.dev: Acostúmbrate a usar VSCode y la terminal, crea la app básica de Rails en Docker y sube tu proyecto local a un repositorio de Github, empleando los comando básicos de git.',
  boilerplate_url: 'https://github.com/fintual-oss/paraffin-back'
)
cycle2 = Cycle.create(
  curriculum: fin,
  name: 'Back-end básico',
  order_number: 2,
  learning_goals_description: 'Entender la sintaxis fundamental de Ruby.\nComprender el funcionamiento de una arquitectura MVC (modelo-vista-controlador).\nTrabajar en el backend de una aplicación web realizada en Rails.\nRealizar testing en modelos, vistas y controlador, utilizando Rspec.\nComprender el concepto de API REST.\nDesarrollar una API a partir de la refactorización de controladores escritos en Rails.\nGenerar la documentación de la API REST empleando la gema Rswag.',
  challenge_description: 'Desarrolla una aplicación monolítica utilizando Ruby on Rails y Docker. Esta aplicación monolítica tiene que ser construida pensando que en el siguiente ciclo se creará una API para comunicarse con el front-end. Incluye los correspondientes tests en Rspec.',
  boilerplate_url: 'https://github.com/fintual-oss/paraffin-front'
)
cycle3 = Cycle.create(
  curriculum: fin, name: 'Front-end básico',
  order_number: 3,
  learning_goals_description: 'Entender los fundamentos de HTML y CSS.\nConocer la sintaxis fundamental de JavaScript y comprender sus principales diferencias con Ruby.\nComprender conceptos de JavaScript, tales como asincronismo y promesas.\nInternalizar las diferencias entre Client Side Rendering y Server Side Rendering.\nUtilizar React comprendiendo sus conceptos clave, como componentes, states y hooks.\nEstructurar una aplicación web en NextJS.\nAprender a emplear librerías de componentes, como Material UI y PrimeFaces.\nRealizar el deployment de una aplicación web en plataformas como Heroku y Vercel.',
  challenge_description: 'Divide el back-end y front-end, creando una API con Rails para que sea consumida en el front-end. El front-end se debe crear utilizando ReactJS o NextJS. Con lo aprendido en los ciclos anteriores se espera poner a prueba todos los conocimientos previos, finalizando con una web app en producción en Heroku para el back-end y Vercel para el front-end.',
  boilerplate_url: 'https://github.com/fintual-oss/paraffin-back'
)

i = 0
learning_units.each do |unit|
  if i < 13
    CycleLearningUnit.create(cycle: cycle1, learning_unit: unit)
  elsif i < 36
    CycleLearningUnit.create(cycle: cycle2, learning_unit: unit)
  else
    CycleLearningUnit.create(cycle: cycle3, learning_unit: unit)

  end
  CurriculumAffiliation.create(curriculum: fin, learning_unit: unit)
  i += 1
end

resources = []

resources.push(Resource.create(user: cris, learning_unit: learning_units[0],
                               name: 'Videos de introducción a VSCode', url: 'https://code.visualstudio.com/docs/getstarted/introvideos'))
resources.push(Resource.create(user: ronny, learning_unit: learning_units[1],
                               name: 'Guia para aprender comandos de la terminal de linux', url: 'https://linuxjourney.com/lesson/the-shell'))
resources.push(Resource.create(user: cris, learning_unit: learning_units[2],
                               name: 'Introducción a Docker', url: 'https://docker-curriculum.com'))
resources.push(Resource.create(user: vane, learning_unit: learning_units[3],
                               name: 'Guia de configuración de archivos para crear un container con app de Rails', url: 'https://github.com/docker/awesome-compose/tree/master/official-documentation-samples/rails'))
resources.push(Resource.create(user: pablo, learning_unit: learning_units[4],
                               name: 'Comandos para controlar contenedores', url: 'https://geekflare.com/es/docker-manage-containers/'))
resources.push(Resource.create(user: cris, learning_unit: learning_units[5],
                               name: 'Aprendizaje interactivo de Git', url: 'https://learngitbranching.js.org/?locale=es_AR'))
resources.push(Resource.create(user: ale, learning_unit: learning_units[6],
                               name: 'Guia de Git y github', url: 'https://www.codecademy.com/learn/learn-git'))
resources.push(Resource.create(user: cris, learning_unit: learning_units[7],
                               name: 'Guia básica de GIT', url: 'https://www.atlassian.com/git'))
resources.push(Resource.create(user: manu, learning_unit: learning_units[8],
                               name: 'Flujo de Git de Thoughbot ', url: 'https://thoughtbot.com/upcase/videos/git-workflow'))
resources.push(Resource.create(user: ceci, learning_unit: learning_units[9],
                               name: 'Guia de Platanus para Git', url: 'https://la-guia.platan.us/setup/configuracion_de_tu_entorno_local/herramientas/git'))
resources.push(Resource.create(user: ceci, learning_unit: learning_units[10],
                               name: 'Github introducción', url: 'https://github.com/skills/introduction-to-github'))
resources.push(Resource.create(user: manu, learning_unit: learning_units[11],
                               name: 'Github Actions', url: 'https://github.com/features/actions'))
resources.push(Resource.create(user: manu, learning_unit: learning_units[12],
                               name: 'Rubocop', url: 'https://rubocop.org/'))
resources.push(Resource.create(user: manu, learning_unit: learning_units[13],
                               name: 'Float en ruby', url: 'https://ruby-doc.org/core-2.5.0/Float.html'))
resources.push(Resource.create(user: pablo, learning_unit: learning_units[14],
                               name: 'Ruby loops', url: 'https://www.tutorialspoint.com/ruby/ruby_loops.htm'))
resources.push(Resource.create(user: ronny, learning_unit: learning_units[15],
                               name: 'Métodos en Ruby', url: 'https://makeitrealcamp.gitbook.io/ruby-book/metodos'))
resources.push(Resource.create(user: juan, learning_unit: learning_units[16],
                               name: 'Guia de configuración de archivos para crear un container con app de Rails', url: 'https://github.com/docker/awesome-compose/tree/master/official-documentation-samples/rails'))
resources.push(Resource.create(user: isa, learning_unit: learning_units[17],
                               name: 'Arquitectura MVC u otro', url: 'https://dev.to/lukekyl/rails-models-views-and-controllers-what-goes-where-4a1b'))
resources.push(Resource.create(user: ceci, learning_unit: learning_units[18],
                               name: 'Curso de Ruby on Rails', url: 'https://www.codecademy.com/learn/learn-rails'))
resources.push(Resource.create(user: ronny, learning_unit: learning_units[19],
                               name: 'Generar un controlador', url: 'http://rubysur.org/introduccion.a.rails/capitulos/un_segundo_modelo/generando_un_controlador.html'))
resources.push(Resource.create(user: valentin,
                               learning_unit: learning_units[20], name: 'Pagina patra el diseño de la base de datos ', url: 'https://dbdiagram.io/'))
resources.push(Resource.create(user: valentin,
                               learning_unit: learning_units[21], name: 'Routing rails', url: 'https://guides.rubyonrails.org/routing.html'))
resources.push(Resource.create(user: carlos, learning_unit: learning_units[22],
                               name: 'Documentación oficial BindingPry', url: 'https://github.com/pry/pry'))
resources.push(Resource.create(user: pablo, learning_unit: learning_units[23],
                               name: 'Arquitectura en Rails', url: 'https://makeitrealcamp.gitbook.io/ruby-on-rails-5/1-arquitectura'))
resources.push(Resource.create(user: valentin,
                               learning_unit: learning_units[24], name: 'Active Record, el comienzo', url: 'https://guides.rubyonrails.org/active_record_basics.html'))
resources.push(Resource.create(user: carlos, learning_unit: learning_units[25],
                               name: 'Vistas en Rails', url: 'https://medium.com/academia-hack/vistas-en-rails-adccc36ed611'))
resources.push(Resource.create(user: nacho, learning_unit: learning_units[26],
                               name: 'Rails console', url: 'https://docs.gitlab.com/ee/administration/operations/rails_console.html'))
resources.push(Resource.create(user: ale, learning_unit: learning_units[27],
                               name: 'Qué son los services ', url: 'https://www.honeybadger.io/blog/refactor-ruby-rails-service-object/'))
resources.push(Resource.create(user: manu, learning_unit: learning_units[27],
                               name: 'Qué son los services ', url: 'https://www.honeybadger.io/blog/refactor-ruby-rails-service-object/'))
resources.push(Resource.create(user: isa, learning_unit: learning_units[29],
                               name: 'Entendiendo y aprendiendo Rspec', url: 'https://dev.to/kevinluo201/introduce-rspec-request-spec-4pbl'))
resources.push(Resource.create(user: ronny, learning_unit: learning_units[30],
                               name: 'Creando factories', url: 'https://www.rubydoc.info/gems/factory_bot/file/GETTING_STARTED.md#defining-factories'))
resources.push(Resource.create(user: ale, learning_unit: learning_units[31],
                               name: 'Comenzando a testear', url: 'https://medium.com/nerd-for-tech/ruby-on-rails-testing-with-rspec-writing-your-first-tests-6330920928fd'))
resources.push(Resource.create(user: ale, learning_unit: learning_units[32],
                               name: 'Generando objetos Json en React', url: 'https://github.com/rails/jbuilder'))
resources.push(Resource.create(user: pablo, learning_unit: learning_units[33],
                               name: 'Documentacion oficial RSWAG', url: 'https://github.com/rswag/rswag'))
resources.push(Resource.create(user: ale, learning_unit: learning_units[34],
                               name: 'Excepciones', url: 'http://rubytutorial.wikidot.com/excepciones'))
resources.push(Resource.create(user: carlos, learning_unit: learning_units[35],
                               name: 'Conceptos básicos de HTML', url: 'https://developer.mozilla.org/es/docs/Learn/Getting_started_with_the_web/HTML_basics'))
resources.push(Resource.create(user: isa, learning_unit: learning_units[36],
                               name: 'Fundamentos de javascript', url: 'https://developer.mozilla.org/es/docs/Learn/Getting_started_with_the_web/JavaScript_basics'))
resources.push(Resource.create(user: ceci, learning_unit: learning_units[37],
                               name: 'Intro al dom', url: 'https://developer.mozilla.org/es/docs/Web/API/Document_Object_Model/Introduction'))
resources.push(Resource.create(user: ceci, learning_unit: learning_units[38],
                               name: 'JavaScript asincrónico', url: 'https://developer.mozilla.org/es/docs/Learn/JavaScript/Asynchronous'))
resources.push(Resource.create(user: manu, learning_unit: learning_units[39],
                               name: 'Promesas en JavaScript', url: 'https://developer.mozilla.org/es/docs/Web/JavaScript/Guide/Using_promises'))
resources.push(Resource.create(user: nacho, learning_unit: learning_units[40],
                               name: 'Client side vs SSR', url: 'https://dev.to/codewithtee/server-side-rendering-ssr-vs-client-side-rendering-csr-3m24'))
resources.push(Resource.create(user: pablo, learning_unit: learning_units[41],
                               name: 'Documentación oficial node', url: 'https://nodejs.org/en/'))
resources.push(Resource.create(user: juan, learning_unit: learning_units[42],
                               name: 'Instalando prettier ', url: 'https://prettier.io/docs/en/install.html'))
resources.push(Resource.create(user: cris, learning_unit: learning_units[43],
                               name: 'React, el curso completo', url: 'https://www.udemy.com/course/react-the-complete-guide-incl-redux/'))
resources.push(Resource.create(user: vane, learning_unit: learning_units[44],
                               name: 'React state', url: 'https://blog.logrocket.com/a-guide-to-usestate-in-react-ecb9952e406c/'))
resources.push(Resource.create(user: cris, learning_unit: learning_units[45],
                               name: 'React hooks', url: 'https://reactjs.org/docs/hooks-overview.html'))
resources.push(Resource.create(user: nacho, learning_unit: learning_units[46],
                               name: 'React atom design', url: 'https://medium.com/@janelle.wg/atomic-design-pattern-how-to-structure-your-react-application-2bb4d9ca5f97'))
resources.push(Resource.create(user: manu, learning_unit: learning_units[47],
                               name: 'Understanding package.json', url: 'https://medium.com/@adityasrivast/reactjs-understanding-package-json-e8cdf408a3df'))
resources.push(Resource.create(user: ronny, learning_unit: learning_units[48],
                               name: 'Armando un proyecto en js', url: 'https://fireship.io/courses/react-next-firebase/'))
resources.push(Resource.create(user: juan, learning_unit: learning_units[49],
                               name: 'Usos de Fetch', url: 'https://developer.mozilla.org/es/docs/Web/API/Fetch_API/Using_Fetch'))
resources.push(Resource.create(user: vane, learning_unit: learning_units[50],
                               name: 'SWR', url: 'https://swr.vercel.app/'))
resources.push(Resource.create(user: cris, learning_unit: learning_units[51],
                               name: 'Rewrite rules', url: 'https://nextjs.org/docs/api-reference/next.config.js/rewrites'))
resources.push(Resource.create(user: carlos, learning_unit: learning_units[52],
                               name: 'Client side rendering', url: 'https://www.patterns.dev/posts/client-side-rendering/'))
resources.push(Resource.create(user: juan, learning_unit: learning_units[53],
                               name: 'Routing', url: 'https://nextjs.org/docs/routing/introduction'))
resources.push(Resource.create(user: ale, learning_unit: learning_units[54],
                               name: 'Autenticación en next', url: 'https://www.tollelege.es/react-next-js-sistema-de-autenticacion-seguro-basado-en-cookies/'))
resources.push(Resource.create(user: ale, learning_unit: learning_units[55],
                               name: 'Separación del back y front', url: 'https://programmerclick.com/article/645898454/'))
resources.push(Resource.create(user: valentin,
                               learning_unit: learning_units[56], name: 'Deploy rails app en Heroku', url: 'https://devcenter.heroku.com/articles/getting-started-with-rails7'))
resources.push(Resource.create(user: juan, learning_unit: learning_units[57],
                               name: 'Deploy next app en vercel', url: 'https://vercel.com/guides/deploying-nextjs-with-vercel'))
resources.push(Resource.create(user: cris, learning_unit: learning_units[58],
                               name: 'Primefaces', url: 'https://www.primefaces.org/primereact/'))
resources.push(Resource.create(user: vane, learning_unit: learning_units[59],
                               name: 'Tutorial desde 0 Sass', url: 'https://www.w3schools.com/sass/sass_intro.php'))
resources.push(Resource.create(user: pablo, learning_unit: learning_units[60],
                               name: 'CSS media queries', url: 'https://developer.mozilla.org/es/docs/Web/CSS/Media_Queries/Using_media_queries'))

LearningUnitSuccession.create(cycle: cycle1, predecessor: learning_units[1],
                              successor: learning_units[2])
LearningUnitSuccession.create(cycle: cycle1, predecessor: learning_units[12],
                              successor: learning_units[3])
LearningUnitSuccession.create(cycle: cycle1, predecessor: learning_units[3],
                              successor: learning_units[4])
LearningUnitSuccession.create(cycle: cycle1, predecessor: learning_units[4],
                              successor: learning_units[5])
LearningUnitSuccession.create(cycle: cycle1, predecessor: learning_units[2],
                              successor: learning_units[6])
LearningUnitSuccession.create(cycle: cycle1, predecessor: learning_units[6],
                              successor: learning_units[7])
LearningUnitSuccession.create(cycle: cycle1, predecessor: learning_units[7],
                              successor: learning_units[8])
LearningUnitSuccession.create(cycle: cycle1, predecessor: learning_units[8],
                              successor: learning_units[9])
LearningUnitSuccession.create(cycle: cycle1, predecessor: learning_units[9],
                              successor: learning_units[10])
LearningUnitSuccession.create(cycle: cycle1, predecessor: learning_units[10],
                              successor: learning_units[11])
LearningUnitSuccession.create(cycle: cycle1, predecessor: learning_units[11],
                              successor: learning_units[12])

LearningUnitSuccession.create(cycle: cycle2, predecessor: learning_units[19],
                              successor: learning_units[13])
LearningUnitSuccession.create(cycle: cycle2, predecessor: learning_units[14],
                              successor: learning_units[15])
LearningUnitSuccession.create(cycle: cycle2, predecessor: learning_units[15],
                              successor: learning_units[16])
LearningUnitSuccession.create(cycle: cycle2, predecessor: learning_units[20],
                              successor: learning_units[17])
LearningUnitSuccession.create(cycle: cycle2, predecessor: learning_units[16],
                              successor: learning_units[18])
LearningUnitSuccession.create(cycle: cycle2, predecessor: learning_units[18],
                              successor: learning_units[19])
LearningUnitSuccession.create(cycle: cycle2, predecessor: learning_units[26],
                              successor: learning_units[20])
LearningUnitSuccession.create(cycle: cycle2, predecessor: learning_units[19],
                              successor: learning_units[21])
LearningUnitSuccession.create(cycle: cycle2, predecessor: learning_units[17],
                              successor: learning_units[22])
LearningUnitSuccession.create(cycle: cycle2, predecessor: learning_units[27],
                              successor: learning_units[23])
LearningUnitSuccession.create(cycle: cycle2, predecessor: learning_units[19],
                              successor: learning_units[24])
LearningUnitSuccession.create(cycle: cycle2, predecessor: learning_units[19],
                              successor: learning_units[25])
LearningUnitSuccession.create(cycle: cycle2, predecessor: learning_units[21],
                              successor: learning_units[26])
LearningUnitSuccession.create(cycle: cycle2, predecessor: learning_units[25],
                              successor: learning_units[27])
LearningUnitSuccession.create(cycle: cycle2, predecessor: learning_units[25],
                              successor: learning_units[28])
LearningUnitSuccession.create(cycle: cycle2, predecessor: learning_units[25],
                              successor: learning_units[29])
LearningUnitSuccession.create(cycle: cycle2, predecessor: learning_units[34],
                              successor: learning_units[30])
LearningUnitSuccession.create(cycle: cycle2, predecessor: learning_units[30],
                              successor: learning_units[31])
LearningUnitSuccession.create(cycle: cycle2, predecessor: learning_units[31],
                              successor: learning_units[32])
LearningUnitSuccession.create(cycle: cycle2, predecessor: learning_units[25],
                              successor: learning_units[33])
LearningUnitSuccession.create(cycle: cycle2, predecessor: learning_units[33],
                              successor: learning_units[34])
LearningUnitSuccession.create(cycle: cycle2, predecessor: learning_units[29],
                              successor: learning_units[35])

LearningUnitSuccession.create(cycle: cycle3, predecessor: learning_units[61],
                              successor: learning_units[37])
LearningUnitSuccession.create(cycle: cycle3, predecessor: learning_units[37],
                              successor: learning_units[38])
LearningUnitSuccession.create(cycle: cycle3, predecessor: learning_units[38],
                              successor: learning_units[39])
LearningUnitSuccession.create(cycle: cycle3, predecessor: learning_units[39],
                              successor: learning_units[40])
LearningUnitSuccession.create(cycle: cycle3, predecessor: learning_units[40],
                              successor: learning_units[41])
LearningUnitSuccession.create(cycle: cycle3, predecessor: learning_units[41],
                              successor: learning_units[42])
LearningUnitSuccession.create(cycle: cycle3, predecessor: learning_units[42],
                              successor: learning_units[43])
LearningUnitSuccession.create(cycle: cycle3, predecessor: learning_units[43],
                              successor: learning_units[44])
LearningUnitSuccession.create(cycle: cycle3, predecessor: learning_units[47],
                              successor: learning_units[45])
LearningUnitSuccession.create(cycle: cycle3, predecessor: learning_units[45],
                              successor: learning_units[46])
LearningUnitSuccession.create(cycle: cycle3, predecessor: learning_units[44],
                              successor: learning_units[47])
LearningUnitSuccession.create(cycle: cycle3, predecessor: learning_units[49],
                              successor: learning_units[48])
LearningUnitSuccession.create(cycle: cycle3, predecessor: learning_units[47],
                              successor: learning_units[49])
LearningUnitSuccession.create(cycle: cycle3, predecessor: learning_units[48],
                              successor: learning_units[50])
LearningUnitSuccession.create(cycle: cycle3, predecessor: learning_units[50],
                              successor: learning_units[51])
LearningUnitSuccession.create(cycle: cycle3, predecessor: learning_units[51],
                              successor: learning_units[52])
LearningUnitSuccession.create(cycle: cycle3, predecessor: learning_units[52],
                              successor: learning_units[53])
LearningUnitSuccession.create(cycle: cycle3, predecessor: learning_units[49],
                              successor: learning_units[54])
LearningUnitSuccession.create(cycle: cycle3, predecessor: learning_units[53],
                              successor: learning_units[55])
LearningUnitSuccession.create(cycle: cycle3, predecessor: learning_units[44],
                              successor: learning_units[56])
LearningUnitSuccession.create(cycle: cycle3, predecessor: learning_units[56],
                              successor: learning_units[57])
LearningUnitSuccession.create(cycle: cycle3, predecessor: learning_units[56],
                              successor: learning_units[58])
LearningUnitSuccession.create(cycle: cycle3, predecessor: learning_units[44],
                              successor: learning_units[59])
LearningUnitSuccession.create(cycle: cycle3, predecessor: learning_units[36],
                              successor: learning_units[60])
LearningUnitSuccession.create(cycle: cycle3, predecessor: learning_units[60],
                              successor: learning_units[61])

ResourceEvaluation.create(user: ale, resource: resources[14], evaluation: 5,
                          comment: 'Muy bueno este recurso')
ResourceEvaluation.create(user: ale, resource: resources[22], evaluation: 3,
                          comment: 'No era lo que esperaba pero me sirve')
ResourceEvaluation.create(user: ale, resource: resources[20], evaluation: 1,
                          comment: 'No me gusto')
ResourceEvaluation.create(user: ale, resource: resources[33], evaluation: 5,
                          comment: 'Definitivamente el mejor curso')
ResourceEvaluation.create(user: ale, resource: resources[2], evaluation: 5,
                          comment: 'Está preciso y conciso')
ResourceEvaluation.create(user: ale, resource: resources[34], evaluation: 5,
                          comment: 'Recomiendo usar esta tecnología')
ResourceEvaluation.create(user: ale, resource: resources[38], evaluation: 5,
                          comment: 'Recomiendo usar esta tecnología')
ResourceEvaluation.create(user: ale, resource: resources[40], evaluation: 3,
                          comment: 'No era lo que esperaba pero me sirve')
ResourceEvaluation.create(user: ale, resource: resources[54], evaluation: 5,
                          comment: 'Me gusta la profundidad con la aborda el tema')
ResourceEvaluation.create(user: ale, resource: resources[55], evaluation: 5,
                          comment: 'Muy interactiva la plataforma')
ResourceEvaluation.create(user: ale, resource: resources[58], evaluation: 5,
                          comment: 'Está preciso y conciso')
ResourceEvaluation.create(user: ale, resource: resources[59], evaluation: 2,
                          comment: 'No lo comprendi')
ResourceEvaluation.create(user: ale, resource: resources[7], evaluation: 5,
                          comment: 'Muy bueno este recurso')
ResourceEvaluation.create(user: ale, resource: resources[8], evaluation: 2,
                          comment: 'Demasiado largo para mi gusto')
ResourceEvaluation.create(user: carlos, resource: resources[1], evaluation: 5,
                          comment: 'Recomiendo usar esta tecnología')
ResourceEvaluation.create(user: carlos, resource: resources[16], evaluation: 5,
                          comment: 'Muy bueno este recurso')
ResourceEvaluation.create(user: carlos, resource: resources[24], evaluation: 5,
                          comment: 'Me impresiono ! Que calidad')
ResourceEvaluation.create(user: carlos, resource: resources[26], evaluation: 5,
                          comment: 'Me impresiono ! Que calidad')
ResourceEvaluation.create(user: carlos, resource: resources[3], evaluation: 3,
                          comment: 'No era lo que esperaba pero me sirve')
ResourceEvaluation.create(user: carlos, resource: resources[30], evaluation: 5,
                          comment: 'Muy interactiva la plataforma')
ResourceEvaluation.create(user: carlos, resource: resources[40], evaluation: 5,
                          comment: 'Recomiendo usar esta tecnología')
ResourceEvaluation.create(user: carlos, resource: resources[44], evaluation: 5,
                          comment: 'Muy bueno y práctico')
ResourceEvaluation.create(user: carlos, resource: resources[46], evaluation: 5,
                          comment: 'Definitivamente el mejor curso')
ResourceEvaluation.create(user: carlos, resource: resources[5], evaluation: 5,
                          comment: 'Me impresiono ! Que calidad')
ResourceEvaluation.create(user: carlos, resource: resources[52], evaluation: 5,
                          comment: 'Me gusta la profundidad con la aborda el tema')
ResourceEvaluation.create(user: carlos, resource: resources[57], evaluation: 5,
                          comment: 'Definitivamente el mejor curso')
ResourceEvaluation.create(user: carlos, resource: resources[59], evaluation: 5,
                          comment: 'Recomiendo usar esta tecnología')
ResourceEvaluation.create(user: ceci, resource: resources[14], evaluation: 2,
                          comment: 'Demasiado largo para mi gusto')
ResourceEvaluation.create(user: ceci, resource: resources[19], evaluation: 5,
                          comment: 'Muy interactiva la plataforma')
ResourceEvaluation.create(user: ceci, resource: resources[38], evaluation: 5,
                          comment: 'Está preciso y conciso')
ResourceEvaluation.create(user: ceci, resource: resources[41], evaluation: 5,
                          comment: 'Me impresiono ! Que calidad')
ResourceEvaluation.create(user: ceci, resource: resources[42], evaluation: 5,
                          comment: 'Muy bueno este recurso')
ResourceEvaluation.create(user: ceci, resource: resources[48], evaluation: 3,
                          comment: 'Me parece bueno aunque fue algo extenso')
ResourceEvaluation.create(user: ceci, resource: resources[9], evaluation: 4,
                          comment: 'Buen punto de partida para lanzarse')
ResourceEvaluation.create(user: cris, resource: resources[43], evaluation: 4,
                          comment: 'Buen punto de partida para lanzarse')
ResourceEvaluation.create(user: cris, resource: resources[13], evaluation: 5,
                          comment: 'Muy bueno este recurso')
ResourceEvaluation.create(user: cris, resource: resources[15], evaluation: 5,
                          comment: 'Muy bueno y práctico')
ResourceEvaluation.create(user: cris, resource: resources[2], evaluation: 5,
                          comment: 'Muy bien explicado')
ResourceEvaluation.create(user: cris, resource: resources[20], evaluation: 5,
                          comment: 'Gran curso')
ResourceEvaluation.create(user: cris, resource: resources[24], evaluation: 5,
                          comment: 'Explicación muy interactiva de cómo funciona')
ResourceEvaluation.create(user: cris, resource: resources[27], evaluation: 3,
                          comment: 'Demasiado avanzado para mi')
ResourceEvaluation.create(user: cris, resource: resources[29], evaluation: 5,
                          comment: 'Recomiendo usar esta tecnología')
ResourceEvaluation.create(user: cris, resource: resources[30], evaluation: 4,
                          comment: 'Buen punto de partida para lanzarse')
ResourceEvaluation.create(user: cris, resource: resources[33], evaluation: 5,
                          comment: 'Muy bien explicado')
ResourceEvaluation.create(user: cris, resource: resources[36], evaluation: 5,
                          comment: 'Muy bueno este recurso')
ResourceEvaluation.create(user: cris, resource: resources[37], evaluation: 5,
                          comment: 'Muy bien explicado')
ResourceEvaluation.create(user: cris, resource: resources[54], evaluation: 1,
                          comment: 'No me gusto')
ResourceEvaluation.create(user: cris, resource: resources[28], evaluation: 4,
                          comment: 'Buen punto de partida para lanzarse')
ResourceEvaluation.create(user: cris, resource: resources[58], evaluation: 5,
                          comment: 'Definitivamente el mejor curso')
ResourceEvaluation.create(user: isa, resource: resources[23], evaluation: 1,
                          comment: 'No me gusto')
ResourceEvaluation.create(user: isa, resource: resources[36], evaluation: 5,
                          comment: 'Muy bueno este recurso')
ResourceEvaluation.create(user: isa, resource: resources[37], evaluation: 5,
                          comment: 'Muy bueno este recurso')
ResourceEvaluation.create(user: isa, resource: resources[5], evaluation: 5,
                          comment: 'Muy interactiva la plataforma')
ResourceEvaluation.create(user: isa, resource: resources[6], evaluation: 4,
                          comment: 'Buen punto de partida para lanzarse')
ResourceEvaluation.create(user: isa, resource: resources[7], evaluation: 5,
                          comment: 'Gran aporte, gracias!')
ResourceEvaluation.create(user: juan, resource: resources[13], evaluation: 3,
                          comment: 'Me parece bueno aunque fue algo extenso')
ResourceEvaluation.create(user: juan, resource: resources[23], evaluation: 4,
                          comment: 'Buen punto de partida para lanzarse')
ResourceEvaluation.create(user: juan, resource: resources[15], evaluation: 4,
                          comment: 'Es muy detallado')
ResourceEvaluation.create(user: juan, resource: resources[27], evaluation: 5,
                          comment: 'Muy interactiva la plataforma')
ResourceEvaluation.create(user: juan, resource: resources[29], evaluation: 2,
                          comment: 'No lo comprendi')
ResourceEvaluation.create(user: juan, resource: resources[32], evaluation: 5,
                          comment: 'Definitivamente el mejor curso')
ResourceEvaluation.create(user: juan, resource: resources[42], evaluation: 3,
                          comment: 'No era lo que esperaba pero me sirve')
ResourceEvaluation.create(user: juan, resource: resources[56], evaluation: 5,
                          comment: 'Muy interactiva la plataforma')
ResourceEvaluation.create(user: juan, resource: resources[58], evaluation: 5,
                          comment: 'Siento que avancé un montón')
ResourceEvaluation.create(user: manu, resource: resources[3], evaluation: 5,
                          comment: 'Muy bueno este recurso')
ResourceEvaluation.create(user: manu, resource: resources[34], evaluation: 5,
                          comment: 'Gran aporte, gracias!')
ResourceEvaluation.create(user: manu, resource: resources[4], evaluation: 2,
                          comment: 'No lo comprendi')
ResourceEvaluation.create(user: manu, resource: resources[42], evaluation: 5,
                          comment: 'Recomiendo usar esta tecnología')
ResourceEvaluation.create(user: manu, resource: resources[2], evaluation: 5,
                          comment: 'Me gusta la profundidad con la aborda el tema')
ResourceEvaluation.create(user: manu, resource: resources[48], evaluation: 5,
                          comment: 'Muy bueno este recurso')
ResourceEvaluation.create(user: manu, resource: resources[5], evaluation: 1,
                          comment: 'No me gusto')
ResourceEvaluation.create(user: manu, resource: resources[52], evaluation: 2,
                          comment: 'No lo comprendi')
ResourceEvaluation.create(user: manu, resource: resources[57], evaluation: 5,
                          comment: 'Gran aporte, gracias!')
ResourceEvaluation.create(user: nacho, resource: resources[13], evaluation: 5,
                          comment: 'Muy bien explicado')
ResourceEvaluation.create(user: nacho, resource: resources[18], evaluation: 5,
                          comment: 'Me gustó mucho')
ResourceEvaluation.create(user: nacho, resource: resources[21], evaluation: 1,
                          comment: 'No me gusto')
ResourceEvaluation.create(user: nacho, resource: resources[24], evaluation: 5,
                          comment: 'Gran aporte, gracias!')
ResourceEvaluation.create(user: nacho, resource: resources[35], evaluation: 5,
                          comment: 'Me gustó mucho')
ResourceEvaluation.create(user: nacho, resource: resources[37], evaluation: 5,
                          comment: 'Siento que avancé un montón')
ResourceEvaluation.create(user: nacho, resource: resources[45], evaluation: 2,
                          comment: 'No lo comprendi')
ResourceEvaluation.create(user: nacho, resource: resources[52], evaluation: 5,
                          comment: 'Muy interactiva la plataforma')
ResourceEvaluation.create(user: nacho, resource: resources[53], evaluation: 5,
                          comment: 'Gran curso')
ResourceEvaluation.create(user: nacho, resource: resources[60], evaluation: 5,
                          comment: 'Explicación muy interactiva de cómo funciona')
ResourceEvaluation.create(user: nacho, resource: resources[9], evaluation: 5,
                          comment: 'Gran aporte, gracias!')
ResourceEvaluation.create(user: pablo, resource: resources[11], evaluation: 5,
                          comment: 'MEJOR TUTORIAL')
ResourceEvaluation.create(user: pablo, resource: resources[12], evaluation: 3,
                          comment: 'Me parece bueno aunque fue algo extenso')
ResourceEvaluation.create(user: pablo, resource: resources[12], evaluation: 5,
                          comment: 'Gran aporte, gracias!')
ResourceEvaluation.create(user: pablo, resource: resources[16], evaluation: 5,
                          comment: 'Explicación muy interactiva de cómo funciona')
ResourceEvaluation.create(user: pablo, resource: resources[19], evaluation: 5,
                          comment: 'Muy bueno y práctico')
ResourceEvaluation.create(user: pablo, resource: resources[28], evaluation: 5,
                          comment: 'MEJOR TUTORIAL')
ResourceEvaluation.create(user: pablo, resource: resources[4], evaluation: 3,
                          comment: 'No era lo que esperaba pero me sirve')
ResourceEvaluation.create(user: pablo, resource: resources[42], evaluation: 5,
                          comment: 'Siento que avancé un montón')
ResourceEvaluation.create(user: pablo, resource: resources[45], evaluation: 2,
                          comment: 'No lo comprendi')
ResourceEvaluation.create(user: pablo, resource: resources[49], evaluation: 5,
                          comment: 'Me gustó mucho')
ResourceEvaluation.create(user: pablo, resource: resources[61], evaluation: 4,
                          comment: 'Buen punto de partida para lanzarse')
ResourceEvaluation.create(user: ronny, resource: resources[1], evaluation: 3,
                          comment: 'Demasiado avanzado para mi')
ResourceEvaluation.create(user: ronny, resource: resources[19], evaluation: 3,
                          comment: 'Demasiado avanzado para mi')
ResourceEvaluation.create(user: ronny, resource: resources[12], evaluation: 5,
                          comment: 'Muy interactiva la plataforma')
ResourceEvaluation.create(user: ronny, resource: resources[34], evaluation: 5,
                          comment: 'MEJOR TUTORIAL')
ResourceEvaluation.create(user: ronny, resource: resources[4], evaluation: 5,
                          comment: 'Recomiendo usar esta tecnología')
ResourceEvaluation.create(user: ronny, resource: resources[42], evaluation: 2,
                          comment: 'No lo comprendi')
ResourceEvaluation.create(user: ronny, resource: resources[47], evaluation: 3,
                          comment: 'No era lo que esperaba pero me sirve')
ResourceEvaluation.create(user: ronny, resource: resources[57], evaluation: 5,
                          comment: 'Muy bueno y práctico')
ResourceEvaluation.create(user: valentin, resource: resources[11], evaluation: 2,
                          comment: 'Demasiado largo para mi gusto')
ResourceEvaluation.create(user: valentin, resource: resources[15], evaluation: 5,
                          comment: 'Me gusta la profundidad con la aborda el tema')
ResourceEvaluation.create(user: valentin, resource: resources[28], evaluation: 5,
                          comment: 'Gran aporte, gracias!')
ResourceEvaluation.create(user: valentin, resource: resources[32], evaluation: 3,
                          comment: 'Demasiado avanzado para mi')
ResourceEvaluation.create(user: valentin, resource: resources[34], evaluation: 5,
                          comment: 'Muy interactiva la plataforma')
ResourceEvaluation.create(user: valentin, resource: resources[37], evaluation: 5,
                          comment: 'Gran aporte, gracias!')
ResourceEvaluation.create(user: valentin, resource: resources[4], evaluation: 1,
                          comment: 'No me gusto')
ResourceEvaluation.create(user: valentin, resource: resources[59], evaluation: 5,
                          comment: 'Me gusta la profundidad con la aborda el tema')
ResourceEvaluation.create(user: valentin, resource: resources[43], evaluation: 5,
                          comment: 'Siento que avancé un montón')
ResourceEvaluation.create(user: valentin, resource: resources[58], evaluation: 5,
                          comment: 'Siento que avancé un montón')
ResourceEvaluation.create(user: vane, resource: resources[14], evaluation: 5,
                          comment: 'Definitivamente el mejor curso')
ResourceEvaluation.create(user: vane, resource: resources[15], evaluation: 5,
                          comment: 'MEJOR TUTORIAL')
ResourceEvaluation.create(user: vane, resource: resources[16], evaluation: 5,
                          comment: 'Muy bien explicado')
ResourceEvaluation.create(user: vane, resource: resources[19], evaluation: 5,
                          comment: 'MEJOR TUTORIAL')
ResourceEvaluation.create(user: vane, resource: resources[23], evaluation: 5,
                          comment: 'Recomiendo usar esta tecnología')
ResourceEvaluation.create(user: vane, resource: resources[29], evaluation: 5,
                          comment: 'Gran aporte, gracias!')
ResourceEvaluation.create(user: vane, resource: resources[36], evaluation: 5,
                          comment: 'Muy bien explicado')
ResourceEvaluation.create(user: vane, resource: resources[2], evaluation: 1,
                          comment: 'Prefiero buscar un nuevo recurso')
ResourceEvaluation.create(user: vane, resource: resources[42], evaluation: 5,
                          comment: 'Muy bien explicado')
ResourceEvaluation.create(user: vane, resource: resources[8], evaluation: 4,
                          comment: 'Hay cosas que se necesitan buscar en otro lado, pero enseña harto')
ResourceEvaluation.create(user: vane, resource: resources[33], evaluation: 5,
                          comment: 'Recomiendo usar esta tecnología')
ResourceEvaluation.create(user: vane, resource: resources[48], evaluation: 5,
                          comment: 'Gran aporte, gracias!')
ResourceEvaluation.create(user: vane, resource: resources[56], evaluation: 5,
                          comment: 'Muy bien explicado')

paid = Label.create(name: 'Paid', description: 'Este recurso es pagado')
media = Label.create(name: 'Media', description: 'Incluye un video')
article = Label.create(name: 'Article', description: 'Es un artículo')

paid_resources = [6, 14, 18, 43, 46, 47, 48]
media_resources = [0, 1, 5, 6, 8, 14, 18, 20, 43, 44, 48]
article_resources = [2, 3, 4, 7, 9, 10, 11, 12, 13, 15, 16, 17, 19, 21, 22, 23, 24, 25, 26, 27, 29,
                     30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60]

paid_resources.each do |resource_id|
  ResourceLabel.create(resource: resources[resource_id], label: paid)
end

media_resources.each do |resource_id|
  ResourceLabel.create(resource: resources[resource_id], label: media)
end

article_resources.each do |resource_id|
  ResourceLabel.create(resource: resources[resource_id], label: article)
end

# CompletedLearningUnit.create(user: ale, learning_unit: git)
# CompletedLearningUnit.create(user: ale, learning_unit: docker)
# CompletedLearningUnit.create(user: ale, learning_unit: ruby)
# CompletedLearningUnit.create(user: ale, learning_unit: js)

# CompletedResource.create(user: ale, resource: docker_rails)
# CompletedResource.create(user: ale, resource: ruby_udemy)
# CompletedResource.create(user: cris, resource: js_codepen)

if Rails.env.development?
  AdminUser.create!(email: 'ale@paraffin.com', password: 'password',
                    password_confirmation: 'password')
end
