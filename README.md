# PruebaTecMarcosMateos

## Administración de Empleados

Este proyecto es una aplicación web desarrollada en ASP.NET WebForms para la administración de empleados, utilizando SQL Server como base de datos.

## Requisitos Previos

Antes de comenzar, asegúrate de tener instalado lo siguiente:

- [Visual Studio](https://visualstudio.microsoft.com/) - Versión 2022 o superior
- [SQL Server](https://www.microsoft.com/en-us/sql-server/sql-server-downloads) - Versión 2019 o superior

## Configuración

1. Clona este repositorio o descárgalo como ZIP: "https://github.com/MarcosMM13/CRUDEmpleadosMarcosMateos.git".

2. Abre el proyecto en Visual Studio.

3. Ajusta la configuración de la conexión a la base de datos en el archivo Web.config. Al revisar el elemento <connectionStrings>, asegúrate de que se vea de esta forma:
"<add name="EvoltisConnection" connectionString="data source=localhost\SQLEXPRESS;initial catalog=EvoltisPruebaTec;integrated security=True;MultipleActiveResultSets=True;App=EntityFramework" providerName="System.Data.SqlClient" />"

4. Ejecuta el script SQL proporcionado en la carpeta `ScriptsSQL` para crear la estructura de la base de datos.

## Ejecución

1. Abre el proyecto en Visual Studio.
2. Asegúrate de que el proyecto de inicio sea "PruebaTec.UI" y que la página de inicio esté configurada como "Index.aspx", que se encuentra en la carpeta "Pages" dentro de este proyecto.
3. Presiona F5 o selecciona "Iniciar Depuración" para ejecutar la aplicación.
4. El navegador debería abrir y mostrar la aplicación en la dirección local.

## Características Principales

- Crear, actualizar y eliminar registros de empleados.
- Validación de formularios tanto en el lado del cliente como en el lado del servidor.
- Uso de tecnologías ASP.NET WebForms, SQL Server y Bootstrap.

## Contribución

Las contribuciones son bienvenidas. Por favor, consulta el archivo [CONTRIBUTING.md](CONTRIBUTING.md) para obtener más detalles.

## Licencia

Este proyecto está bajo la Licencia MIT.

## Contacto

Puedes contactarme en [E-mail] (mateosmarcosm@gmail.com) o seguirme en [LinkdIn](www.linkedin.com/in/marcosmmateos).