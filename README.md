<p align="center">
  <img alt="logo" src="https://i.pinimg.com/originals/b5/27/3b/b5273bf4e9c6c47caa9efbb821253fcb.gif" width="350px" float="center"/>
</p>

<h2 align="center">👨‍💻 IESB - [CCON7A-CCO076] - Compiler 👨‍💻</h2>

<div align="center">

[![Semantic Release](https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-semantic--release-e10079.svg)](https://github.com/lpmatos/compyler)
[![Commitizen friendly](https://img.shields.io/badge/commitizen-friendly-brightgreen.svg)](https://github.com/lpmatos/compyler)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](/LICENSE)
[![Gitpod Ready-to-Code](https://img.shields.io/badge/Gitpod-Ready--to--Code-blue?logo=gitpod)](https://gitpod.io/#https://github.com/lpmatos/compyler)

</div>

---

<p align="center">
  <img alt="funny-gif" src="https://i.pinimg.com/originals/46/8a/a2/468aa2a896304b32a5930020f685ee97.gif" width="450px" float="center"/>
</p>

<p align="center">  
  👻 College work - Development of a compiler for the <b>SIMPLE</b> language 👻
</p>

<p align="center">
  <a href="#about">About</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#getting-started">Getting Started</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#authors">Authors</a>
</p>

---

## ➤ Getting Started <a name = "getting-started"></a>

If you want to contribute, first you need to do a **git clone** of the repo:

>
> 1. git clone --depth 1 <https://github.com/lpmatos/compyler.git> -b main
>

This will give you access to the code on your **local machine**.

## ➤ About <a name = "about"></a>

In this work, the analysis phase (`lexical`, `syntactic` and `semantic`) of a compiler for the programming language **SIMPLE** will be developed.

## ➤ Development with Docker

Steps to build the docker image:

<details><summary>🐋 Build</summary>
<p>

Docker commands to build your image:

```bash
docker image build -t <IMAGE_NAME> -f <PATH_DOCKERFILE> <PATH_CONTEXT_DOCKERFILE>
docker image build -t <IMAGE_NAME> . (This context)
```
</p>
</details>

<details><summary>🐋 Run</summary>
<p>

Docker commands to run a container with yout image:

* **Linux** running:

```bash
docker container run -d -p <LOCAL_PORT:CONTAINER_PORT> <IMAGE_NAME> <COMMAND>
docker container run -it --rm --name <CONTAINER_NAME> -p <LOCAL_PORT:CONTAINER_PORT> <IMAGE_NAME> <COMMAND>
```

* **Windows** running:

```bash
winpty docker.exe container run -it --rm <IMAGE_NAME> <COMMAND>
```
</p>
</details>

## ➤ Contacts

👤 **Lucca Pessoa**

Hey!! If you like this project or if you find some bugs feel free to contact me in my channels:

>
> * Email: luccapsm@gmail.com
> * Website: [lpmatos](https://github.com/lpmatos)
> * Github: [@lpmatos](https://github.com/lpmatos)
> * GitLab: [@lpmatos](https://gitlab.com/lpmatos)
> * LinkedIn: [@luccapessoa](https://www.linkedin.com/in/luccapessoa/)
>

## ➤ Authors <a name = "authors"></a>

<table>
  <tr>
    <td align="center"><a href="https://github.com/lpmatos">
      <img src="https://avatars2.githubusercontent.com/u/58797390?s=400&v=4" width="100px;" alt=""/><br /><sub><b>Lucca Pessoa - 1612130075</b></sub></a><br /><a href="https://github.com/lpmatos/compyler/commits?author=lpmatos" title="Code">💻</a> <a href="#lpmatos" title="Design">🎨</a>
    </td>
    <td align="center"><a href="https://github.com/thiagosantanap">
      <img src="https://avatars.githubusercontent.com/u/44931953?v=4" width="100px;" alt=""/><br /><sub><b>Thiago Santana - 1612130047</b></sub></a><br /><a href="https://github.com/lpmatos/compyler/commits?author=thiagosantanap" title="Code">💻</a> <a href="#lpmatos" title="Design">🎨</a>
    </td>
  <tr>
</table>

## ➤ Contributing

Contributions, issues and feature requests are welcome. Feel free to check issues page if you want to contribute. [Check the contributing guide](CONTRIBUTING.md).

## ➤ License <a name = "license"></a>

This repository is released under the [MIT license](https://opensource.org/licenses/MIT). In short, this means you are free to use this software in any personal, open-source or commercial projects. Attribution is optional but appreciated.

## ➤ Show your support <a name = "show-your-support"></a>

Give a ⭐️ if this project helped you!

---

Made with 💜 by [me](https://gitlab.com/lpmatos) :wave: inspired on [readme-md-generator](https://github.com/kefranabg/readme-md-generator)
