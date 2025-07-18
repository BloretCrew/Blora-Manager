<div align="center">
  <a href="https://Blora-Manager.com/" target="_blank">
    <img src="https://public-link.oss-cn-shenzhen.aliyuncs.com/mcsm_picture/logo.png" alt="Blora-ManagerLogo.png" width="510px" />    
  </a>

  <br />

  <h1 id="Blora-Manager">
    <a href="https://Blora-Manager.com/" target="_blank">Blora-Manager パネル</a>
  </h1>


[![--](https://img.shields.io/badge/Support-Windows/Linux-green.svg)](https://github.com/Blora-Manager)
[![Status](https://img.shields.io/badge/npm-v8.9.14-blue.svg)](https://www.npmjs.com/)
[![Status](https://img.shields.io/badge/node-v16.20.2-blue.svg)](https://nodejs.org/en/download/)
[![Status](https://img.shields.io/badge/License-Apache%202.0-red.svg)](https://github.com/Blora-Manager)

[HP](http://Blora-Manager.com/) | [ドキュメント](https://docs.Blora-Manager.com/) | [Discord](https://discord.gg/BNpYMVX7Cd)

[English](README.md) | [简体中文](README_ZH.md) | [繁體中文](README_TW.md) | [Deutsch](README_DE.md) | [Português BR](README_PTBR.md) | [Spanish](README_ES.md) | [Thai](README_TH.md)

</div>

<br />



## Blora-Managerとは？

**Blora-Manager パネル**は、マイクラフト（Minecraft）やsteamのゲームサーバーを管理するために開発されました。このパネルは、モダンで安全な分散型コントロールパネルです。

Blora-Managerは、マイクラフトと中心としてコミュニティ内で既に一定の人気を得ています。このパネルは、複数のサーバーインスタンスの集中管理ソリューションを提供し、安全で信頼できるマルチユーザー許可システムも提供します。まだ、マイクラフトだけでなく、Terrariaや色々なSteamゲームサーバーの管理者をサポートします。私たちの目標は、ゲームサーバー管理のために別なコミュニティを育成します。

今まで、Blora-Managerは英語、フランス語、ドイツ語、イタリア語、日本語、簡体中国語、繫体中国語をサポートしており、将来は多くの言語のサポートを追加する予定です。

![failed_to_load_screenshot.png](/.github/panel-image.png)

![failed_to_load_screenshot.png](/.github/panel-instances.png)

## 特徴

1. シンプルなマイクラフトサーバーをデプロイメントができます。
2. 他のゲームサーバーもコンパチブルです。（例：`Palworld`, `Squad`, `Project Zomboid`, `Terraria`)
3. 個人的なUIをカスタマイズすることができます。
4. `Docker`デプロイすると商用利用ができます。
5. 一つウェブでマルチサーバー管理することができます。
6. もっと

<br />

## ランタイム環境

MCSMパネルは`Windows`や`Linux`システムをサポートして、`Node.js`が必要です。

`Node.js`は16.20.2以上が必要です。

<br />

## インスタレーション

### Windows

[MCSM HP](https://Blora-Manager.com)でファイルパックをダウンロードしって、`.exe`ファイルを実行するです。

<br />

### Linux

**シンプルデプロイ**

> スクリプトは自動的にシステムサービスを登録して、実行するときはルートパーミッションが必要です。

```bash
sudo su -c "wget -qO- https://script.Blora-Manager.com/setup.sh | bash"
```

**コマンド**

```bash
systemctl start mcsm-{web,daemon}
systemctl stop mcsm-{web,daemon}
```

- Ubuntu/Centos/Debian/Archlinuxしかサポートしてないです。
- インストールパス: `/opt/Blora-Manager/`.

<br />

**Linux マニュアルのインストール**

- スクリプト実行するときでエロがあったら、マニュアルでインストールもできます。

```bash
# /opt パスなかったら、パスを作成します
mkdir /opt
# /opt パスを開けます
cd /opt/
# Node.js 20.11 ダウンロードします。Node.js 16+ あったら、しなくていいです。
wget https://nodejs.org/dist/v20.11.0/node-v20.11.0-linux-x64.tar.xz
# Node.jsソースの解凍
tar -xvf node-v20.11.0-linux-x64.tar.xz
# Node.jsをシステムパス追加します
ln -s /opt/node-v20.11.0-linux-x64/bin/node /usr/bin/node
ln -s /opt/node-v20.11.0-linux-x64/bin/npm /usr/bin/npm

# MCSMのインストールパスを準備します
mkdir /opt/Blora-Manager/
cd /opt/Blora-Manager/

# MCSMダウンロードします
wget https://github.com/BloretCrew/Blora-Manager/releases/latest/download/Blora-Manager_linux_release.tar.gz
tar -zxf Blora-Manager_linux_release.tar.gz

# 必要なアプリを自動的にインストールします

./install.sh

# 二つターミナル用意してください

# まず、daemon実行します。
./start-daemon.sh

# daemon実行したら、二つ目のターミナルでウェブを実行します。
./start-web.sh

# ウェブのアドレスは http://localhost:23333/
# ウェブは自動的に同じデバイスインストールしたdaemonを検測して、追加します。
```

マニュアルインストールは、自動的にシステムサービス追加しません。そして、自分でシステムサービス追加するか`screen`しないといけないです。システム追加する方法は、グーグルやウィキペディアで調べてください。

<br />

## ブラウザの互換性

- Supported on modern browsers including `Chrome`, `Firefox`, and `Safari`.
- `Chrome`と`Firefox`と`Safari`がサポートしています。
- Support for `IE` has been discontinued.
- 現在は、`IE`のサポートしていません。

<br />

## 開発

以下の情報は、開発者関係のみです。普通のユーザーとは関係ないです。

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

そのあとは、[PTY](https://github.com/Blora-Manager/PTY)と[Zip-Tools](https://github.com/Blora-Manager/Zip-Tools) ダウンロードして、解凍して、対応の`daemon/lib`パスへ移動してください。

<br />

## コード貢献

問題と意見あったら、GitHubのissueへ提出してください。プロジェクトforkしたら、そして、Pull Requestへcommit出して貢献することができます。

もし、貢献するは、コードのスタイルが現在と似てっる感じしてください。詳細は、[ガイドライン](https://github.com/BloretCrew/Blora-Manager/issues/544)見てください。

<br />

## BUG レポート

**IssueとBUG:** [押してください](https://github.com/BloretCrew/Blora-Manager/issues/new/choose)

**安全関係のレポート:** [SECURITY.md](SECURITY.md)

<br />

## 国際化

以下の人は、多量の翻訳してありがどうございます：

- [KevinLu2000](https://github.com/KevinLu2000)
- [Yumao](https://github.com/yumao233)
- [JHL-HK](https://github.com/jhl-hk)
- [IceBrick](https://github.com/IceBrick01)

<br />

## ライセンス

ソースコードは、 [Apache-2.0](https://www.apache.org/licenses/LICENSE-2.0)ライセンス使っています。

Copyright ©2025 Blora-Manager.
