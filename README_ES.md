<div align="center">
  <a href="https://Blora-Manager.com/" target="_blank">
    <img src="https://public-link.oss-cn-shenzhen.aliyuncs.com/mcsm_picture/logo.png" alt="Blora-ManagerLogo.png" width="510px" />    
  </a>

  <br />
  
  <h1 id="Blora-Manager">
    <a href="https://Blora-Manager.com/" target="_blank">Panel de Blora-Manager</a>
  </h1>

[![--](https://img.shields.io/badge/Support-Windows/Linux-green.svg)](https://github.com/Blora-Manager)
[![Estado](https://img.shields.io/badge/npm-v8.9.14-blue.svg)](https://www.npmjs.com/)
[![Estado](https://img.shields.io/badge/node-v16.20.2-blue.svg)](https://nodejs.org/en/download/)
[![Licencia](https://img.shields.io/badge/License-Apache%202.0-red.svg)](https://github.com/Blora-Manager)

[Sitio Oficial](http://Blora-Manager.com/) | [Documentación](https://docs.Blora-Manager.com/) | [Discord](https://discord.gg/BNpYMVX7Cd)

[Inglés](README.md) | [简体中文](README_ZH.md) | [繁體中文](README_TW.md) | [Deutsch](README_DE.md) | [Português BR](README_PTBR.md) | [日本語](README_JP.md) | [Thai](README_TH.md)
</div>

<br />

## ¿Qué es Blora-Manager?

**Panel de Blora-Manager** (MCSM) es un **panel de control moderno, seguro y distribuido** diseñado para gestionar servidores de juego de Minecraft y Steam.

Blora-Manager ha ganado popularidad en la comunidad, especialmente en Minecraft. Blora-Manager ofrece una solución centralizada para gestionar múltiples instancias de servidor y proporciona un sistema de permisos multiusuario seguro y confiable. Nos comprometemos a apoyar a los administradores de servidores no solo para Minecraft, sino también para Terraria y varios juegos de Steam. Nuestro objetivo es fomentar una comunidad próspera y de apoyo en la gestión de servidores de juego.

Blora-Manager **admite inglés, francés, alemán, italiano, japonés, portugués, chino simplificado y chino tradicional**, ¡y planea agregar más idiomas en el futuro!

![failed_to_load_screenshot.png](/.github/panel-image.png)

![failed_to_load_screenshot.png](/.github/panel-instances.png)

## Características

1. Implementación con un clic de servidor `Minecraft` Java/Bedrock.
2. Compatible con la mayoría de servidores de juegos de `Steam` (p. ej., `Palworld`, `Squad`, `Project Zomboid`, `Terraria`, etc.).
3. Interfaz personalizable; crea tu propio diseño.
4. Soporte para virtualización con `Docker`, multiusuario y servicios comerciales.
5. Gestiona múltiples servidores desde una sola interfaz web.
6. ¡Y más!

<br />

## Entorno de Ejecución

MCSM es compatible con `Windows` y `Linux`. El único requisito es `Node.js` y algunas librerías **para descompresión**.

Requiere [Node.js 16.20.2](https://nodejs.org/en) o superior.

<br />

## Instalación

### Windows

Para Windows, ofrecemos archivos ejecutables empaquetados:

Ir a: [https://Blora-Manager.com/](https://Blora-Manager.com/)

<br />

### Linux

**Despliegue con un solo comando**

> El script necesita registrar servicios del sistema, requiere permisos de root.

```bash
sudo su -c "wget -qO- https://script.Blora-Manager.com/setup.sh | bash"
```

**Uso**

```bash
systemctl start mcsm-{web,daemon}
systemctl stop mcsm-{web,daemon}
```

- Solo compatible con Ubuntu/Centos/Debian/Archlinux.
- Directorio de instalación: `/opt/Blora-Manager/`.
  
<br />

**Instalación Manual en Linux**

- Si el script de instalación falla, puedes intentar instalarlo manualmente.
  
```bash
# Crear directorio /opt si no existe
mkdir /opt
# Cambiar a /opt
cd /opt/
# Descargar Node.js 20.11. Si ya tienes Node.js 16+ instalado, omite este paso.
wget https://nodejs.org/dist/v20.11.0/node-v20.11.0-linux-x64.tar.xz
# Descomprimir Node.js
tar -xvf node-v20.11.0-linux-x64.tar.xz
# Agregar Node.js al PATH del sistema
ln -s /opt/node-v20.11.0-linux-x64/bin/node /usr/bin/node
ln -s /opt/node-v20.11.0-linux-x64/bin/npm /usr/bin/npm

# Preparar el directorio de instalación de MCSM
mkdir /opt/Blora-Manager/
cd /opt/Blora-Manager/

# Descargar Blora-Manager
wget https://github.com/BloretCrew/Blora-Manager/releases/latest/download/Blora-Manager_linux_release.tar.gz
tar -zxf Blora-Manager_linux_release.tar.gz

# Instalar dependencias
./install.sh

# Abrir dos terminales o pantallas.

# Iniciar el daemon primero.
./start-daemon.sh

# Iniciar la interfaz web en la segunda terminal o pantalla.
./start-web.sh

# Para acceder a la web, ir a http://localhost:23333/
# En general, la interfaz web escaneará y añadirá automáticamente el daemon local.
```

Este método de instalación no configura automáticamente Blora-Manager como un servicio del sistema. Por lo tanto, es necesario usar `screen` para la administración. Para quienes quieran administrar Blora-Manager a través de un servicio del sistema, por favor consulta nuestra wiki/documentación.

<br />

## Compatibilidad del Navegador

- Compatible con navegadores modernos como `Chrome`, `Firefox` y `Safari`.
- El soporte para `IE` ha sido discontinuado.

<br />

## Desarrollo

Esta sección está dirigida específicamente a desarrolladores. Los usuarios generales pueden ignorarla sin problema.

### MacOS

```bash
git clone https://github.com/BloretCrew/Blora-Manager.git
./install-dependents.sh
./npm-dev-macos.sh
```

### Windows

```bash
git clone https://github.com/BloretCrew/Blora-Manager.git
./install-dependents.bat
./npm-dev-windows.bat
```

### Construir Versión de Producción

```bash
./build.bat # Windows
./build.sh  # MacOS
```

Luego, deberás ir a los proyectos [PTY](https://github.com/Blora-Manager/PTY) y [Zip-Tools](https://github.com/Blora-Manager/Zip-Tools) para descargar los archivos binarios correspondientes y colocarlos en el directorio `daemon/lib` para asegurar el funcionamiento adecuado del `Terminal de Emulación` y la `Descompresión de Archivos`.

<br />

## Contribución de Código

Si experimentas problemas al usar Blora-Manager, puedes [enviar un Issue](https://github.com/BloretCrew/Blora-Manager/issues/new/choose). Alternativamente, puedes hacer un fork del proyecto y contribuir directamente enviando un Pull Request.

Asegúrate de que el código enviado siga nuestro estilo de codificación existente. Para más detalles, consulta las pautas en [este issue](https://github.com/BloretCrew/Blora-Manager/issues/544).

<br />

## Reporte de Errores

**Abrir Issue:** [Haz clic aquí](https://github.com/BloretCrew/Blora-Manager/issues/new/choose)

**Reporte de Vulnerabilidades de Seguridad:** [SECURITY.md](SECURITY.md) (en ingles)

<br />

## Internacionalización

Gracias a estos colaboradores por proporcionar una gran cantidad de traducciones:

- [KevinLu2000](https://github.com/KevinLu2000)
- [Yumao](https://github.com/yumao233)
- [JHL-HK](https://github.com/jhl-hk)
- [IceBrick](https://github.com/IceBrick01)

<br />

## Licencia
El código fuente de Blora-Manager está licenciado bajo la [Licencia Apache-2.0](https://www.apache.org/licenses/LICENSE-2.0).

Copyright ©2025 Blora-Manager.
