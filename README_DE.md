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

[Offizielle Website](http://Blora-Manager.com/) | [Dokumentation](https://docs.Blora-Manager.com/) | [Discord](https://discord.gg/BNpYMVX7Cd)

[Englisch](README.md) | [简体中文](README_ZH.md) | [繁體中文](README_TW.md) | [Português BR](README_PTBR.md) |
[日本語](README_JP.md) | [Spanisch](README_ES.md) | [Thai](README_TH.md)

</div>

<br />

## Was ist Blora-Manager?

**Blora-Manager Panel** (MCSM) ist ein **modernes, sicheres und verbreitetes Verwaltungspanel**, designt für die Verwaltung von Minecraft und Steam Spielserver.

Blora-Manager hat bereits eine gewisse Popularität in der Community erlangt, insbesondere durch Minecraft. Blora-Manager zeichnet sich durch eine zentralisierte Verwaltungslösung für mehrere Serverinstanzen aus und bietet ein sicheres und zuverlässiges Berechtigungssystem für mehrere Benutzer. Darüber hinaus engagieren wir uns für die Unterstützung von Serveradministratoren, nicht nur für Minecraft, sondern auch für Terraria und verschiedene Steam Spiele. Unser Ziel ist es, eine florierende und unterstützende Community für die Verwaltung von Spielservern zu fördern.

Blora-Manager **unterstützt Englisch, Französisch, Deutsch, Italienisch, Japanisch, Portugiesisch, Chinesisch (Vereinfacht) und Chinesisch (Traditionell)**, mit Plänen mehr Sprachen in der Zukunft zu unterstützen!

**Terminal**

![failed_to_load_screenshot.png](/.github/panel-image.png)

**Instanzliste**

![failed_to_load_screenshot.png](/.github/panel-instances.png)

**Benutzerdefiniertes Layout**

![failed_to_load_screenshot.png](/.github/panel-custom-layout.gif)

## Funktionen

1. Ein-Klick-Bereitstellung von `Minecraft` Java/Bedrock Servers
2. Kompatibel mit den meisten `Steam` Spielservern. (z.B. `Palworld`, `Squad`, `Project Zomboid`, `Terraria`, etc.)
3. Anpassbare Benutzeroberfläche, erstellen Sie Ihr eigenes Layout
4. Unterstützt alle Images auf `Docker Hub`, unterstützt mehrere Benutzer und unterstützt kommerzielle Dienste!
5. Verwalten Sie mehrere Server mit einer einzigen Weboberfläche
6. Der Technologie-Stack ist einfach, und Sie müssen nur gut in Typescript sein, um die gesamte Blora-Manager-Entwicklung abzuschließen.
7. Und mehr!

<br />

## Laufzeitumgebung

MCSM unterstützt `Windows` und `Linux`. Die einzige Anforderung ist `Node.js` und ein Paar andere Bibliotheken **für die Dekomprimierung**.

Benötigt [Node.js 16.20.2](https://nodejs.org/en) oder höher.

<br />

## Installation

### Windows

Für Windows, stellen wir gepackte ausführbare Dateien zur Verfügung:

Gehe zu: [https://Blora-Manager.com/](https://Blora-Manager.com/)

<br />

### Linux

**Bereitstellung mit einem Befehl**

> Das Skript muss Systemdienste registrieren und benötigt daher Root-Berechtigungen.

```bash
sudo su -c "wget -qO- https://script.Blora-Manager.com/setup.sh | bash"
```

**Verwendung**

```bash
systemctl start mcsm-{web,daemon}
systemctl stop mcsm-{web,daemon}
```

- Unterstützt nur Ubuntu/Centos/Debian/Archlinux.
- Installationsort: `/opt/Blora-Manager/`.

<br />

**Linux - Manuelle Installation**

- Wenn das Installationsskript nicht ordnungsgemäß ausgeführt wird, können Sie versuchen, es manuell zu installieren.

```bash
# Erstellen des /opt Verzeichnisses, wenn es nicht bereits existiert
mkdir /opt
# Wechseln zu /opt/
cd /opt/
# Node.js 20.11 herunterladen. Wenn Sie bereits Node.js 16+ installiert haben, können sie diesen Schritt ignorieren.
wget https://nodejs.org/dist/v20.11.0/node-v20.11.0-linux-x64.tar.xz
# Node.js entpacken
tar -xvf node-v20.11.0-linux-x64.tar.xz
# Node.js zum System PATH hinzufügen
ln -s /opt/node-v20.11.0-linux-x64/bin/node /usr/bin/node
ln -s /opt/node-v20.11.0-linux-x64/bin/npm /usr/bin/npm

# MCSM's Installationsort vorbereiten
mkdir /opt/Blora-Manager/
cd /opt/Blora-Manager/

# Blora-Manager herunterladen
wget https://github.com/BloretCrew/Blora-Manager/releases/latest/download/Blora-Manager_linux_release.tar.gz
tar -zxf Blora-Manager_linux_release.tar.gz

# Abhängigkeiten installieren
./install.sh

# Bitte öffnen Sie zwei Terminals oder Screens.

# Starten Sie den Daemon zuerst.
./start-daemon.sh

# Starten Sie anschließend das Web-Interface im zweiten Terminal oder Screen.
./start-web.sh

# Gehen Sie für den Webzugriff zu http://localhost:23333/
# Im Allgemeinen scannt das Webinterface automatisch den lokalen Daemon und fügt ihn hinzu.
```

Bei diesem Installationsansatz wird Blora-Manager nicht automatisch als Systemdienst eingerichtet. Daher ist es notwendig, "Screen" für die Verwaltung zu verwenden. Wenn Sie daran interessiert sind, Blora-Manager über einen Systemdienst zu verwalten, lesen Sie bitte unser Wiki/unsere Dokumentation.

<br />

## Entwicklung

Dieser Abschnitt wurde speziell für Entwickler entwickelt. Allgemeine Benutzer können diesen Teil ohne Bedenken ignorieren.

### Plugins

Wir verwenden "VS Code", um Blora-Manager zu entwickeln. Möglicherweise müssen Sie diese Plugins installieren:

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

### Abhängigkeiten

Sie müssen zu den Projekten [PTY](https://github.com/Blora-Manager/PTY) und [Zip-Tools](https://github.com/Blora-Manager/Zip-Tools) gehen, um die entsprechenden Binärdateien herunterzuladen und sie im Verzeichnis 'daemon/lib' abzulegen, um das ordnungsgemäße Funktionieren des `Emulation Terminals` und der `File Decompression` sicherzustellen.

### Produktionsversion erstellen

```bash
./build.bat # Windows
./build.sh  # MacOS
```

Ausgabe-Verzeichnis: "production-code"

<br />

## Code beitragen

Sollten Sie Probleme bei der Nutzung von Blora-Manager haben, können Sie gerne [ein Issue](https://github.com/BloretCrew/Blora-Manager/issues/new/choose) einreichen. Alternativ können Sie das Projekt forken und direkt beitragen, indem Sie einen Pull Request einreichen.

Bitte stellen Sie sicher, dass der eingereichte Code unserem bestehenden Codierungsstil entspricht. Weitere Informationen finden Sie in den Richtlinien in [diesem Issue](https://github.com/BloretCrew/Blora-Manager/issues/544).

<br />

## Browser Kompatibilität

- Wird in modernen Browsern wie `Chrome`, `Firefox` und `Safari` unterstützt.
- Die Unterstützung für `IE` wurde eingestellt.

<br />

## BUG Reporting

**Issue erstellen:** [Hier drücken](https://github.com/BloretCrew/Blora-Manager/issues/new/choose)

**Bericht über Sicherheitslücken:** [SECURITY.md](SECURITY.md)

<br />

## Internationalisierung

Vielen Dank an diese Mitwirkenden für die Bereitstellung einer beträchtlichen Menge an Übersetzungen:

- [KevinLu2000](https://github.com/KevinLu2000)
- [Yumao](https://github.com/yumao233)
- [JHL-HK](https://github.com/jhl-hk)
- [IceBrick](https://github.com/IceBrick01)

<br />

## Lizens

Der Quellcode von Blora-Manager ist unter der [Apache-2.0](https://www.apache.org/licenses/LICENSE-2.0) Lizenz lizenziert.

Copyright ©2025 Blora-Manager.
