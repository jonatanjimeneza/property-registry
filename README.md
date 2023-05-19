# PropertyRegistry

Este repositorio contiene un contrato de Solidity llamado PropertyRegistry, que es un sistema de registro de propiedades en la cadena de bloques Ethereum. Permite a los propietarios registrar, transferir y consultar propiedades.

# Funcionalidades

El contrato de registro de propiedades incluye las siguientes funcionalidades:

- Registro de nuevas propiedades con nombre, ubicación y valor.
- Transferencia de propiedad de un propietario a otro.
- Consulta de información de una propiedad específica.
- Obtención del número total de propiedades registradas.

## Requisitos previos

Asegúrate de tener los siguientes requisitos previos instalados en tu entorno de desarrollo:

- Node.js (versión 12 o superior)
- npm (Normalmente se instala junto con Node.js)
- Hardhat (Instalación global: `npm install -g hardhat`)

## Instalación

1. Clona este repositorio en tu máquina local:

   ```bash
   git clone https://github.com/tu-usuario/property-registry.git

2. Navega al directorio del repositorio:

   ```bash
    Copy code
    cd property-registry

3. Instala las dependencias del proyecto:

   ```bash
    Copy code
    npm install

#Uso

1. Inicia una instancia local de Ethereum con Hardhat:

    ```bash
    Copy code
    npx hardhat node


2. Ejecuta las pruebas:

    ```bash
    Copy code
    npx hardhat test

Esto ejecutará las pruebas definidas en el directorio test y mostrará los resultados en la consola.

# Estructura del proyecto

El repositorio sigue la siguiente estructura de directorios:

* contracts/: Contiene el contrato Solidity PropertyRegistry.sol.
* test/: Contiene las pruebas automatizadas para el contrato utilizando Hardhat y Chai.
* hardhat.config.js: Archivo de configuración de Hardhat.

# Contribuir
Si deseas contribuir a este proyecto, ¡eres bienvenido! Puedes abrir un problema para reportar errores o enviar una solicitud de extracción con tus mejoras propuestas.

# Licencia
Este proyecto está bajo la Licencia MIT. Consulta el archivo LICENSE para más detalles.
