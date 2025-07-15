<div align="center">
  <a href="https://Blora-Manager.com/" target="_blank">
    <img src="https://public-link.oss-cn-shenzhen.aliyuncs.com/mcsm_picture/logo.png" alt="Blora-ManagerLogo.png" width="510px" />    
  </a>

  <br />
  
  <h1 id="Blora-Manager">
    <a href="https://Blora-Manager.com/" target="_blank">Painel Blora-Manager</a>
  </h1>

[![--](https://img.shields.io/badge/Support-Windows/Linux-green.svg)](https://github.com/Blora-Manager)
[![Status](https://img.shields.io/badge/npm-v8.9.14-blue.svg)](https://www.npmjs.com/)
[![Status](https://img.shields.io/badge/node-v16.20.2-blue.svg)](https://nodejs.org/en/download/)
[![Status](https://img.shields.io/badge/License-Apache%202.0-red.svg)](https://github.com/Blora-Manager)

[Website Oficial](http://Blora-Manager.com/) | [Documentação](https://docs.Blora-Manager.com/) | [Discord](https://discord.gg/BNpYMVX7Cd)

[English](README.md) | [简体中文](README_ZH.md) | [繁體中文](README_TW.md) | [Deutsch](README_DE.md) |
[日本語](README_JP.md) | [Spanish](README_ES.md) | [Thai](README_TH.md)

</div>

<br />



## O que é o Blora-Manager?

O **Painel Blora-Manager** (MCSM) é um **painel de controle moderno, seguro e distribuído** projetado para gerenciar servidores de jogos Minecraft e Steam.

O Blora-Manager já conquistou um certo nível de popularidade dentro da comunidade, especificamente a de Minecraft. O Blora-Manager se destaca por oferecer uma solução de gerenciamento centralizado para várias instâncias de servidores e proporciona um sistema de permissões multiusuário seguro e confiável. Além disso, estamos comprometidos em apoiar os administradores de servidores não apenas para Minecraft, mas também para Terraria e diversos jogos da Steam. Nosso objetivo é fomentar uma comunidade próspera e colaborativa para o gerenciamento de servidores de jogos.

O Blora-Manager **suporta Alemão, Chinês Simplificado, Chinês Tradicional, Inglês, Francês, Italiano, Japonês e Português**, com planos de adicionar suporte para mais idiomas no futuro!

![failed_to_load_screenshot.png](/.github/panel-image.png)

![failed_to_load_screenshot.png](/.github/panel-instances.png)

## Features

1. Implantação com um clique do servidor `Minecraft` Java/Bedrock
2. Compatível com a maioria dos servidores de jogos da `Steam` (ex.: `Palworld`, `Squad`, `Project Zomboid`, `Terraria`, etc.)
3. Interface personalizável, crie seu próprio layout
4. Suporte à virtualização `Docker`, multiusuário e serviços comerciais
5. Gerencie múltiplos servidores com uma única interface web
6. E mais...

<br />

## Ambiente de Execução

O MCSM suporta tanto `Windows` quanto `Linux`. O único requisito é `Node.js` e algumas bibliotecas **para descompressão**.

Requer [Node.js 16.20.2](https://nodejs.org/en) ou superior.

<br />

## Instalação

### Windows

Para Windows, fornecemos arquivos executáveis empacotados:

Acesse: [https://Blora-Manager.com/](https://Blora-Manager.com/)

<br />

### Linux

**Implantação com um Comando**

> O script precisa registrar serviços do sistema, portanto, requer permissões de root.

```bash
sudo su -c "wget -qO- https://script.Blora-Manager.com/setup.sh | bash"
```

**Uso**

```bash
systemctl start mcsm-{web,daemon}
systemctl stop mcsm-{web,daemon}
```

- Suporta apenas Ubuntu/Centos/Debian/Archlinux.
- Diretório de instalação: `/opt/Blora-Manager/`.

<br />

**Instalação Manual no Linux**

- Se o script de instalação falhou ao ser executado corretamente, você pode tentar instalar manualmente.

```bash
# Criar o diretório /opt se ainda não existir
mkdir /opt
# Mudar para o diretório /opt
cd /opt/
# Baixar o Node.js 20.11. Se você já tiver o Node.js 16+ instalado, ignore este passo.
wget https://nodejs.org/dist/v20.11.0/node-v20.11.0-linux-x64.tar.xz
# Descompactar o código-fonte do Node.js
tar -xvf node-v20.11.0-linux-x64.tar.xz
# Adicionar o Node.js ao PATH do sistema
ln -s /opt/node-v20.11.0-linux-x64/bin/node /usr/bin/node
ln -s /opt/node-v20.11.0-linux-x64/bin/npm /usr/bin/npm

# Preparar o diretório de instalação do MCSM
mkdir /opt/Blora-Manager/
cd /opt/Blora-Manager/

# Baixar o Blora-Manager
wget https://github.com/BloretCrew/Blora-Manager/releases/latest/download/Blora-Manager_linux_release.tar.gz
tar -zxf Blora-Manager_linux_release.tar.gz

# Instalar dependências
./install.sh

# Por favor, abra dois terminais ou telas separadas.

# Inicie o daemon primeiro.
./start-daemon.sh

# Inicie a interface web no segundo terminal ou tela.
./start-web.sh

# Para acessar a web, vá para http://localhost:23333/
# Geralmente, a interface web irá escanear e adicionar automaticamente o daemon local.
```

Este método de instalação não configura automaticamente o Blora-Manager como um serviço do sistema. Portanto, é necessário usar `screen` para gerenciamento. Para aqueles interessados em gerenciar o Blora-Manager por meio de um serviço do sistema, consulte nossa wiki/documentação.

<br />

## Compatibilidade com Navegadores

- Suportado em navegadores modernos, incluindo `Chrome`, `Firefox` e `Safari`.
- O suporte ao `IE` foi descontinuado.

<br />

## Desenvolvimento

Esta seção é especificamente projetada para desenvolvedores. Usuários comuns podem ignorar esta parte sem preocupações.

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

### Build Production Version

```bash
./build.bat # Windows
./build.sh  # MacOS
```

Em seguida, você precisará acessar os projetos [PTY](https://github.com/Blora-Manager/PTY) e [Zip-Tools](https://github.com/Blora-Manager/Zip-Tools) para baixar os arquivos binários correspondentes e colocá-los no diretório `daemon/lib` para garantir o funcionamento adequado do `Terminal de Emulação` e `Descompressão de Arquivos`.

<br />

## Contribuição de Código

Se você encontrar algum problema ao usar o Blora-Manager, sinta-se à vontade para [enviar um Issue](https://github.com/BloretCrew/Blora-Manager/issues/new/choose). Alternativamente, você pode fazer um fork do projeto e contribuir diretamente enviando um Pull Request.

Por favor, certifique-se de que qualquer código enviado siga o estilo de codificação existente. Para mais detalhes, consulte as diretrizes fornecidas [neste issue](https://github.com/BloretCrew/Blora-Manager/issues/544).

<br />

## Relatório de BUGs

**Criar Issue:** [Clique aqui](https://github.com/BloretCrew/Blora-Manager/issues/new/choose)

**Relatório de Vulnerabilidade de Segurança:** [SECURITY.md](SECURITY.md)

<br />

## Internacionalização

Agradecemos aos seguintes colaboradores por fornecerem uma quantidade substancial de tradução:

- [KevinLu2000](https://github.com/KevinLu2000)
- [Yumao](https://github.com/yumao233)
- [JHL-HK](https://github.com/jhl-hk)
- [IceBrick](https://github.com/IceBrick01)

<br />

## Licença

O código-fonte do Blora-Manager é licenciado sob a Licença [Apache-2.0](https://www.apache.org/licenses/LICENSE-2.0).

Copyright ©2025 Blora-Manager.
