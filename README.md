<div align="center">
  <a href="https://Blora-Manager.com/" target="_blank">
    <img src="https://public-link.oss-cn-shenzhen.aliyuncs.com/mcsm_picture/logo.png" alt="Blora-ManagerLogo.png" width="510px" />    
  </a>

  <br />
  
  <h1 id="Blora-Manager">
    <a href="https://Blora-Manager.com/" target="_blank">Blora-Manager Panel</a>
  </h1>

[![--](https://img.shields.io/badge/Support-Windows/Linux-green.svg)](https://github.com/Blora-Manager)
[![Status](https://img.shields.io/badge/npm-v8.9.14-blue.svg)](https://www.npmjs.com/)
[![Status](https://img.shields.io/badge/node-v16.20.2-blue.svg)](https://nodejs.org/en/download/)
[![Status](https://img.shields.io/badge/License-Apache%202.0-red.svg)](https://github.com/Blora-Manager)

[Official Website](http://Blora-Manager.com/) | [Docs](https://docs.Blora-Manager.com/) | [Discord](https://discord.gg/BNpYMVX7Cd)

[简体中文](README_ZH.md) | [繁體中文](README_TW.md) | [Deutsch](README_DE.md) | [Português BR](README_PTBR.md) |
[日本語](README_JP.md) | [Spanish](README_ES.md) | [Thai](README_TH.md)

</div>

<br />

## What is Blora-Manager?

**Blora-Manager Panel** (MCSM) is a **modern, secure, and distributed control panel** designed for managing Minecraft and Steam game servers.

Blora-Manager has already gained a certain level of popularity within the community, specifically because of Minecraft. Blora-Manager excels in offering a centralized management solution for multiple server instances and provides a secure and reliable multi-user permission system. In addition, we are committed to support server administrators, not only for Minecraft but also for Terraria and various Steam games. Our goal is to foster a thriving and supportive community for game server management.

Blora-Manager **supports English, French, German, Italian, Japanese, Portuguese, Simplified Chinese, and Traditional Chinese**, with plans to add support for more languages in the future!

**Terminal**

![failed_to_load_screenshot.png](/.github/panel-image.png)

**Instance List**

![failed_to_load_screenshot.png](/.github/panel-instances.png)

**Custom Layout**

![failed_to_load_screenshot.png](/.github/panel-custom-layout.gif)

## Features

1. One-click deployment of `Minecraft` Java/Bedrock Server
2. Compatible with most `Steam` game servers. (e.g. `Palworld`, `Squad`, `Project Zomboid`, `Terraria`, etc.)
3. Customizable UI, create your own layout
4. Supports all images on `Docker Hub`, supports multiple users and supports commercial services!
5. Manage multiple servers with a single web interface
6. The technology stack is simple, and you only need to be good at Typescript to complete the entire Blora-Manager development.
7. And More!

<br />

## Runtime Environment

MCSM supports both `Windows` and `Linux`. The only requirement is `Node.js` and some libraries **for decompression**.

Requires [Node.js 16.20.2](https://nodejs.org/en) or above.

<br />

## Installation

### Windows

For Windows, we provide packaged executable files:

Go to: [https://Blora-Manager.com/](https://Blora-Manager.com/)

<br />

### Linux

**One-Command Deployment**

> The script needs to register system services and requires root permissions because of that.

```bash
sudo su -c "wget -qO- https://script.Blora-Manager.com/setup.sh | bash"
```

**Usage**

```bash
systemctl start mcsm-{web,daemon}
systemctl stop mcsm-{web,daemon}
```

- Only supports Ubuntu/Centos/Debian/Archlinux.
- Installation directory: `/opt/Blora-Manager/`.

<br />

**Linux Manual Installation**

- If the installation script fails to execute correctly, you can try to install it manually.

```bash
# Create /opt directory if not already
mkdir /opt
# Switch to /opt
cd /opt/
# Download Node.js 20.11. If you already have Node.js 16+ installed, ignore this step.
wget https://nodejs.org/dist/v20.11.0/node-v20.11.0-linux-x64.tar.xz
# Decompress Node.js source
tar -xvf node-v20.11.0-linux-x64.tar.xz
# Add Node.js to system PATH
ln -s /opt/node-v20.11.0-linux-x64/bin/node /usr/bin/node
ln -s /opt/node-v20.11.0-linux-x64/bin/npm /usr/bin/npm

# Prepare MCSM's installation directory
mkdir /opt/Blora-Manager/
cd /opt/Blora-Manager/

# Download Blora-Manager
wget https://github.com/BloretCrew/Blora-Manager/releases/latest/download/Blora-Manager_linux_release.tar.gz
tar -zxf Blora-Manager_linux_release.tar.gz

# Install dependencies
./install.sh

# Please open two terminals or screens.

# Start the daemon first.
./start-daemon.sh

# Start the web interface at the second terminal or screen.
./start-web.sh

# For web access, go to http://localhost:23333/
# In general, the web interface will automatically scan and add the local daemon.
```

This installation approach does not automatically set up Blora-Manager as a system service. Therefore, it is necessary to use `screen` for management. For those interested in managing Blora-Manager through a system service, please refer to our wiki/documentation.

<br />

## Development

This section is specifically designed for developers. General users may disregard this portion without concern.

### Plugins

We use "VS Code" to develop Blora-Manager. You may need to install these plugins:

- i18n display support (I18n Ally)
- Code formatter (Prettier)
- Vue - Offcial
- ESLint

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

### Dependency Files

You'll need to go to the [PTY](https://github.com/Blora-Manager/PTY) and [Zip-Tools](https://github.com/Blora-Manager/Zip-Tools) projects to download the corresponding binary files and place them in the `daemon/lib` directory to ensure the proper functioning of the `Emulation Terminal` and `File Decompression`.

### Build Production Version

```bash
./build.bat # Windows
./build.sh  # MacOS
```

Output Directory: "production-code"

<br />

## Code Contributing

If you experience any problems while using Blora-Manager, you are welcome to [submit an Issue](https://github.com/BloretCrew/Blora-Manager/issues/new/choose). Alternatively, you can fork the project and contribute directly by submitting a Pull Request.

Please ensure that any submitted code adheres to our existing coding style. For more details, refer to the guidelines provided in [this issue](https://github.com/BloretCrew/Blora-Manager/issues/544).

<br />

## Browser Compatibility

- Supported on modern browsers including `Chrome`, `Firefox`, and `Safari`.
- Support for `IE` has been discontinued.

<br />

## BUG Reporting

**Open Issue:** [Click here](https://github.com/BloretCrew/Blora-Manager/issues/new/choose)

**Security Vulnerability Report:** [SECURITY.md](SECURITY.md)

<br />

## Internationalization

Thanks to these contributors for providing a substantial amount of translation:

- [KevinLu2000](https://github.com/KevinLu2000)
- [Yumao](https://github.com/yumao233)
- [JHL-HK](https://github.com/jhl-hk)
- [IceBrick](https://github.com/IceBrick01)

<br />

## License

The source code of Blora-Manager is licensed under the [Apache-2.0](https://www.apache.org/licenses/LICENSE-2.0) License.

Copyright ©2025 Blora-Manager.
