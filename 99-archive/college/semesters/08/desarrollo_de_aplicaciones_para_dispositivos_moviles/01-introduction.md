# Introduction

## Componentes de una aplicación

### View

Son los elementos que componen la interfaz de usuario de una aplicación: por ejemplo, un botón o una entrada de texto. Todas las vistas van a ser objetos descendientes de la clase View.

### Layout

Es un conjunto de vistas agrupadas de una determinada forma. Hay diferentes tipos de layouts para organizar las vistas. Los layouts también son objetos descendientes de la clase View.

### Activity

En Android, cada una de las pantallas se conoce como actividad. Su función principal es la creación de la interfaz de usuario. Una actividad utiliza un layout para definir su apariencia.

### Fragment

Representa una parte reutilizable de la IU de una app. Un fragmento define y administra su propio diseño y su propio ciclo de vida. Los fragmentos no pueden existir por sí solos, deben estar alojados en una actividad u otro fragmento.

### Service

Es un proceso que se ejecuta en segundo plano, sin la necesidad de una interacción con el usuario. Se utiliza cuando se quiere tener en ejecución un código de manera continua, aunque el usuario cambie de actividad.

### Intent

Se utiliza cada vez que se quiere realizar una acción, como ir de una actividad a otra, lanzar un servicio o realizar una llamada.

### Broadcast receiver

Es un componente destinado a detectar y reaccionar ante determinados eventos, por ejemplo, que se apaga la pantalla o que el nivel de carga de la batería es bajo.

### Content provider

Permite compartir datos entre aplicaciones. Mediante estos componentes es posible compartir determinados datos de una aplicación sin mostrar detalles sobre su almacenamiento interno, su estructura o su implementación.

## Ciclo de vida de una actividad

![life cycle of an activity](99-archive/college/semesters/08/desarrollo_de_aplicaciones_para_dispositivos_moviles/assets/01_01-life_cycle_of_an_activity.svg)
