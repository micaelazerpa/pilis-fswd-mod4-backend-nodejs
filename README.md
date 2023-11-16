# Aplicación de recetas de comidas regionales de Jujuy

El proyecto desarrollado con NodeJS. Gestión de usuarios y gestión de recetas. 

**Instalación:**

`npm install`

## API endpoints

**User:**

- ***GET -> api/users*** - Muestra todos los usuarios registrados
- ***GET -> api/users/:id*** - Muestra un usuario
- ***POST -> api/signup*** - Permite el registro de un usuario
- ***POST -> api/signin*** - Inicia sesion de un usuario
- ***PUT -> api/users/:id*** - Edita un usuario
- ***DELETE -> api/users/:id*** - Elimina un usuario

**Recipe:**

- ***GET -> api/recipes*** - Muestras todas las recetas 
- ***GET -> api/recipes/:id*** - Muestra una receta
- ***POST -> api/recipes*** - Crea una receta con el usuario previamente autenticado
- ***PUT -> api/recipes/:id*** - Edita una receta con el usuario propietario previamente autenticado
- ***DELETE -> api/recipes/:id*** - Elimina una receta con el usuario propietario previamente autenticado

**Nota**
&nbsp;
Usuarios registrados:

>email:fulanito@gmail.com
&nbsp;
password:cosme

>email:micaela@gmail.com
&nbsp;
password:12345
