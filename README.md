# 🛠️ Dotfiles de Rodolfo

Este repositorio contiene mis configuraciones personales (`dotfiles`) para mi entorno de desarrollo en macOS. Es una forma de mantener todo organizado y fácilmente replicable en nuevos equipos.

## 🧠 ¿Para qué sirve este repo?

Guarda mis configuraciones de terminal, herramientas de desarrollo, alias personalizados, y otros ajustes que uso diariamente. Ideal para:

- Migrar fácilmente a un nuevo Mac
- Recordar qué configuraciones usé en el pasado
- Compartir configuraciones entre mis distintos dispositivos

## 📁 Estructura del repositorio

```plaintext
dotfiles/
├── README.md                # Este archivo
├── .gitignore               # Ignora archivos innecesarios
├── .idea/                   # Configuración del proyecto (VSCode/JetBrains)
├── bash/                    # Configuraciones específicas para bash
├── zsh/                     # Configuraciones específicas para zsh
├── bin/                     # Scripts ejecutables personales
├── doc/                     # Documentación personal
│   └── Documentacion.txt
├── editors/
│   ├── intellij-idea/
│   └── webstorm/
├── git/
│   ├── .gitconfig           # Configuración de Git
│   └── .gitignore_global    # Ignorados globales de Git
├── langs/                   # Archivos relacionados con lenguajes de programación
│   ├── archivos creados personalmente.txt
│   └── lenguajes de programacion.txt
├── shell/                   # Scripts de shell organizados por contexto
│   ├── _clg/clg.sh
│   ├── _cmt/cmt.sh
│   ├── _cns/cns.sh
│   ├── _git/git.sh
│   ├── _global/
│   │   ├── global.sh
│   │   └── variables.sh
│   └── init.sh
├── so/mac/                  # Configuraciones específicas para macOS
│   ├── iTerm2/
│   └── karabiner-elements/
├── symlinks/                # Scripts para crear enlaces simbólicos
│   └── links.sh
```

> **Nota**: Algunos archivos pueden estar ocultos por ser "dotfiles". Usa `ls -la` para verlos.
> **Nota**: Tambien usar `cmd + shift + .` para ver los archivos ocultos en Finder.

## ⚙️ Instalación rápida

```bash
git clone https://github.com/rodolfocl/dotfiles.git ~/dotfiles
cd ~/dotfiles
./install.sh
```

Este script crea enlaces simbólicos desde tu home (`~`) hacia los archivos de configuración del repositorio.

## 📌 Requisitos

- macOS
- Zsh (ya viene por defecto en macOS) + instalar [Oh My Zsh](https://ohmyz.sh/)
- [Homebrew](https://brew.sh/) para instalar herramientas adicionales fácilmente
- Plugins recomendados para Zsh:
  - `zsh-autosuggestions`
  - `zsh-syntax-highlighting`
- Tema [Powerlevel10k](https://github.com/romkatv/powerlevel10k)

- Git

## 🧪 Tips útiles

- Personaliza tus alias por contexto dentro de la carpeta [`shell`](./shell), por ejemplo en:
  - `shell/_clg/clg.sh`
  - `shell/_cmt/cmt.sh`
  - `shell/_cns/cns.sh`
- Recarga la terminal después de hacer cambios:

```bash
source ~/.zshrc
```

- Si algo falla, revisa el script `install.sh` y asegúrate de que los paths sean correctos.

## 📄 Licencia

Este repositorio es de uso personal. Si te sirve de inspiración, ¡bienvenido! Pero úsalo bajo tu propio riesgo 😅
