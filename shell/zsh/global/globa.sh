# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/rodolfovenegas/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# zsh-autosuggestions: Plugin instaldo por mi, para la sugerencia
# https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md
#
# Video plugins: https://onedrive.live.com/?cid=1C5A9C77DFE4D4B9&id=1C5A9C77DFE4D4B9%21126154&parId=1C5A9C77DFE4D4B9%21126151&o=OneUp
# Plugins comunidad zsh: https://github.com/zsh-users
# Plugins instalados: zsh-autosuggestions, zsh-syntax-highlighting
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# ===============================================================
# VARIABLES GLOBALES # ==========================================
# ===============================================================
# PARA QUE LAS FUNCIONES TENGAN ACCESO A ELLAS

# Colores para el texto
# https://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux


# Colores para el background del texto
# https://nick3499.medium.com/bash-echo-text-color-background-color-e8d8c41d5a91
# https://tecadmin.net/change-background-color-of-text-in-linux-shell/


# Color texto
RED='\033[0;31m'
DGRAY='\033[1;30m'
YELLOW='\033[1;33m'
LCYAN='\033[1;36m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

# Background color texto
B_WHITE='\e[0;47m'
B_NC='\e[0m' # No Color

# Formato texto
BOLD=$(tput bold)
NORMAL=$(tput sgr0)


# ===============================================================
# ALIASES # =====================================================
# ===============================================================
# Para ver ejemplo de sintaxys de shell script
# https://devhints.io/bash


#===========================================================
# ALIAS CONFIGURACION SHELL Y COMADOS UTILIZADOS GLOBALMENTE
#===========================================================

# Shell configuration
alias zshconfig="vim ~/.zshrc"
#alias dotfiles="idea /Users/rodolfovenegas/.dotfiles/"
alias godotfiles="/Users/rodolfovenegas/.dotfiles/"
alias dotfiles="cd /Users/rodolfovenegas/.dotfiles/"
alias opendot="open .dotfiles"

# Open directories with finder, intellij or vscode
alias w="/usr/local/bin/webstorm"
alias w.="wstorm ."
alias i="/usr/local/bin/idea"
alias i.="idea ."
alias c="code"
alias c.="code ."
alias o.="open ."

# Useful commands
alias use="tldr" # brew install tldr
alias copy="pbcopy < "

# Node versions
alias 4="nvm use 4.9.1"
#alias 10="nvm use 10.4.1"
alias 10="nvm use 10.15.3"
alias 12="nvm use 12.16.3"
alias 14="nvm use 14.17.3"
alias 15="nvm use 15.13.0"

#=============================================
# ALIASES UTILIZADOS PARA TRABAJAR EN COLEGIUM
#=============================================

# Postulaciones: configurar host
alias host="sudo vim /private/etc/hosts"

# Jump to directories
alias ext='cd Documents/cloud/extracurriculares'
alias rei='cd Documents/cloud/reinscripciones'
alias pos='cd Documents/cloud/postulaciones'
alias inha='cd Documents/cloud/inhabilidad_docente'
alias ori='cd Documents/cloud/orientacion'
alias ges='cd Documents/cloud/gdd'
alias api='cd Documents/cloud/colegium-api'
alias tt='cd Documents/webapp/teachertrack-webapp'
alias apic='cd Documents/webapp/colegiumcloud-api'
alias esb='cd Documents/webapp/colegiumcloud-api_esb'
alias sn4='cd Documents/webapp/schoolnet4-webapp'
alias app='cd Documents/webapp/colegiumcloud-appbasefrontend'

# Execute projects
alias runa="nodemon colegium_api.js"
alias runp="nodemon postulaciones.js"
alias rune="nodemon extracurriculares.js"
alias runr="nodemon reinscripciones.js"
alias runi="nodemon inhadoc.js"
alias runo="nodemon orientacion.js"
alias rung="nodemon gdd.js"
alias dev="npm run dev"

# ALIAS PARA TRABAJAR CON GIT

alias git="git "
alias lg="log --oneline --decorate --all --graph"
alias st="status -s -b"
alias pd="pretty-diff"
alias pl="pretty-log"
#alias undo="undo-last-commit" # funcion git
alias undo="reset HEAD~1 --mixed" # Deshace el utimo commit manteniendo los cambios



#===============================================
# FUNCIONES UTILIZADOS PARA TRABAJAR EN COLEGIUM
#===============================================

function run() {
  # Parametro ingresado a la funcion
  typeset PROYECTO
  PROYECTO="$1"

  if [[ ! "$PROYECTO" ]]; then
    echo ""
    echo "⚠️  ADVERTENCIA: Debes indicar que proyecto deseas ejecutar."
    echo "   Uso: run <proyecto>"
    echo ""
    echo " ${DGRAY}----------------------------${NC}"
    echo "→ ${YELLOW}api${NC} : Colegium-api "
    echo "→ ${YELLOW}pos${NC} : Postulaciones "
    echo "→ ${YELLOW}ext${NC} : Extracurriculares "
    echo "→ ${YELLOW}inha${NC}: Inhabilidad Cloud"
    echo "→ ${YELLOW}oys${NC} : Orientacion OyS "
    echo "→ ${YELLOW}gdt${NC} : Gestion de talento GDT "
    echo "→ ${YELLOW}tt${NC}  : TeacherTrack  "
    echo "→ ${YELLOW}tt15${NC}: TeacherTrack 1.5 "
    echo "→ ${YELLOW}sn4${NC} : Schoolnet4 "
    echo "→ ${YELLOW}apic${NC}: colegiumcloud-api "
    echo "→ ${YELLOW}esb${NC} : colegiumcloud-api_esb "
    echo "→ ${YELLOW}pa${NC}  : procesosautomaticos_esb "
    echo " ${DGRAY}----------------------------${NC}"
    echo ""

  else
    # VUELVO AL HOME
    cd

    # COLEGIUM-API
    if [[ "api" == "$PROYECTO" ]]; then
      echo "💥 ${LCYAN}CARGANDO COLEGIUM-API${NC}"
      echo ""
      cd Documents/cloud/colegium-api
      pwd
      nvm use 4.9.1
      echo ""
      echo "⚙️  INICIANDO PROYECTO..."
      echo ""
      # progress_bar
      nodemon colegium_api.js

    # POSTULACIONES
    elif [[ "pos" == "$PROYECTO" ]]; then
      echo "💥 ${LCYAN}CARGANDO POSTULACIONES${NC}"
      echo ""
      cd Documents/cloud/postulaciones
      pwd
      nvm use 4.9.1
      echo ""
      echo "⚙️  INICIANDO PROYECTO..."
      echo ""
      # progress_bar
      nodemon postulaciones.js

    # EXTRACURRICULARES
    elif [[ "ext" == "$PROYECTO" ]]; then
      echo "💥 ${LCYAN}CARGANDO EXTRACURRICULARES${NC}"
      echo ""
      cd Documents/cloud/extracurriculares
      pwd
      nvm use 4.9.1
      echo ""
      echo "⚙️  INICIANDO PROYECTO..."
      echo ""
      # progress_bar
      nodemon extracurriculares.js

      # INHABILIDAD
      elif [[ "inha" == "$PROYECTO" ]]; then
      echo "💥 ${LCYAN}CARGANDO INHABILIDAD DOCENTE${NC}"
      echo ""
      cd Documents/cloud/inhabilidad_docente
      pwd
      nvm use 4.9.1
      echo ""
      echo "⚙️  INICIANDO PROYECTO..."
      echo ""
      nodemon inhadoc.js

      # ORIENTACION Y SEGUIMINETO
      elif [[ "oys" == "$PROYECTO" ]]; then
      echo "💥 ${LCYAN}CARGANDO ORIENTACION Y SEGUIMIENTO${NC}"
      echo ""
      cd Documents/cloud/orientacion
      pwd
      nvm use 4.9.1
      echo ""
      echo "⚙️  INICIANDO PROYECTO..."
      echo ""
      nodemon orientacion.js

      # GESTION DE TALENTOS
      elif [[ "gdt" == "$PROYECTO" ]]; then
      echo "💥 ${LCYAN}CARGANDO GESTION DE TALENTOS${NC}"
      echo ""
      cd Documents/cloud/gdd
      pwd
      nvm use 4.9.1
      echo ""
      echo "⚙️  INICIANDO PROYECTO..."
      echo ""
      nodemon gdd.js

    # TEACHERTRACK
    elif [[ "tt" == "$PROYECTO" ]]; then
      echo "💥 ${LCYAN}CARGANDO TEACHERTRACK${NC}"
      echo ""
      cd Documents/webapp/teachertrack-webapp
      pwd
      nvm use 10.15.3
      echo ""
      echo "⚙️  INICIANDO PROYECTO..."
      echo ""
      npm run dev

    # SCHOOLNET4
    elif [[ "sn4" == "$PROYECTO" ]]; then
      echo "💥 ${LCYAN}CARGANDO SCHOOLNET4${NC}"
      echo ""
      cd Documents/webapp/schoolnet4-webapp
      pwd
      nvm use 10.15.3
      echo ""
      echo "⚙️  INICIANDO PROYECTO..."
      echo ""
      npm run dev

    # COLEGIUMCLOUD-TEACHERTRACK-WEBAPP (APP BASE TT 1.5)
    elif [[ "tt15" == "$PROYECTO" ]]; then
      echo "💥 ${LCYAN}CARGANDO CCOLEGIUMCLOUD-TEACHERTRACK-WEBAPP 1.5${NC}"
      echo ""
      cd Documents/webapp/teachertrack15
      pwd
      nvm use 14.17.3
      echo ""
      echo "⚙️  INICIANDO PROYECTO..."
      echo ""
      npm run dev

    # COLEGIUMCLOUD-API
    elif [[ "apic" == "$PROYECTO" ]]; then
      echo "💥 ${LCYAN}CARGANDO COLEGIUMCLOUD-API${NC}"
      echo ""
      cd Documents/webapp/colegiumcloud-api
      pwd
      nvm use 10.15.3
      echo ""
      echo "⚙️  INICIANDO PROYECTO..."
      echo ""
      npm run dev

    # COLEGIUMCLOUD-API_ESB
    elif [[ "esb" == "$PROYECTO" ]]; then
      echo "💥 ${LCYAN}CARGANDO COLEGIUMCLOUD-API_ESB${NC}"
      echo ""
      cd Documents/webapp/colegiumcloud-api_esb
      pwd
      nvm use 10.15.3
      echo ""
      echo "⚙️  INICIANDO PROYECTO..."
      echo ""
      npm run dev

    # PROCESOSAUTOMATICOS_ESB
    elif [[ "pa" == "$PROYECTO" ]]; then
      echo "💥 ${LCYAN}CARGANDO PROCESOSAUTOMATICOS_ESB${NC}"
      echo ""
      cd Documents/webapp/procesosautomaticos_esb
      pwd
      nvm use 10.15.3
      echo ""
      echo "⚙️  INICIANDO PROYECTO..."
      echo ""
      npm run dev

    else
      echo ""
      echo "${DGRAY}###################################################${NC}"
      echo "${DGRAY}# ❌ ${NC}${RED}ERROR:${NC} EL PROYECTO INGRESADO NO ES VALIDO${DGRAY}   #${NC}"
      echo "${DGRAY}###################################################${NC}"
      echo ""
      cat .dotfiles/shell/_images/.bowser
      echo ""
      echo "${DGRAY}###################################################${NC}"
      echo ""
      echo "⚠️   VERIFICA EL ALIAS DEL PROYECTO A EJECUTAR."
      echo "    USO: run <proyecto>"
      echo ""
      echo " ${DGRAY}   --------------------------------${NC}"
      echo "  →  ${YELLOW}api${NC}  :  Colegium-api "
      echo "  →  ${YELLOW}pos${NC}  :  Postulaciones "
      echo "  →  ${YELLOW}ext${NC}  :  Extracurriculares "
      echo "  →  ${YELLOW}inha${NC} :  Inhabilidad Cloud"
      echo "  →  ${YELLOW}oys${NC}  :  Orientacion OyS "
      echo "  →  ${YELLOW}gdt${NC}  :  Gestion de talento GDT "
      echo "  →  ${YELLOW}tt${NC}   :  TeacherTrack  "
      echo "  →  ${YELLOW}tt15${NC} :  TeacherTrack 1.5 "
      echo "  →  ${YELLOW}sn4${NC}  :  Schoolnet4 "
      echo "  →  ${YELLOW}apic${NC} :  colegiumcloud-api "
      echo "  →  ${YELLOW}esb${NC}  :  colegiumcloud-api_esb "
      echo "  →  ${YELLOW}pa${NC}   :  procesosautomaticos_esb "
      echo " ${DGRAY}   --------------------------------${NC}"
      echo ""
      echo "${DGRAY}###################################################${NC}"
      echo ""
    fi
  fi
}


function pretty-diff() {
  ##? Ver git diff con un previsualizador de los cambios en la terminal
  ##? Utilizando fzf: brew install fzf
  ##?  1.0.0
  ##?
  ##? Usage:
  ##? pretty-diff, al dar enter en un archivomodificado copia el path del archivo

  if (! git rev-parse HEAD >/dev/null 2>&1 ); then
    echo "\n${DGRAY}============================================${NC}"
    echo "${YELLOW}Este directorio no es un repositorio de GIT!${YELLOW}"
    echo "${DGRAY}============================================${NC}\n"
  else
    git -c color.status=always status --short |
    fzf --height 100% --ansi \
      --preview '(git diff HEAD --color=always -- {-1} | sed 1,4d)' \
      --preview-window right:65% |
    cut -c4- |
    sed 's/.* -> //' |
    tr -d '\n' |
    pbcopy
  fi

}

function pretty-log() {
  ##? Git log filtering con fzf
  ##? Utilizando fzf: brew install fzf
  ##?
  ##? Usage:
  ##? pretty-log, al dar enter en un commmit copia el id del commit seleccionado

  commit=$(
  git log --graph \
    --color=always \
    --date=human \
    --format="%C(auto)%h%d %s %C(black)%C(bold)%ad by %an" |
    fzf --ansi --no-sort \
      --preview '(git diff-tree --no-commit-id --name-status -r {2})' \
      --preview-window right:35%
  )

  commit_hash=$(echo ${commit} | awk '{print $2}')

  echo ${commit_hash} | tr -d '\n' | pbcopy
}

function show-ignored() {
  ##? Show all ignored files
  #?? 1.0.0
  ##?
  ##? Usage:
  ##? show-ignored

  git status --ignored -s | grep "\!\!"
}

function find-msg-commit() {
  ##? Find commits by commit message
  #?? 1.0.0
  ##?
  ##? Usage:
  ##? find "message to find"

  git log --pretty=format:'%C(yellow)%h  %Cblue%ad  %Creset%s%Cgreen  [%cn] %Cred%d' --decorate --date=short --regexp-ignore-case --grep=$1
}

function standup() {
  ##? Muestra utltimos commit realizados por dias con su fecha y respectiva hora
  #?? 1.0.0
  ##?
  ##? Usage:
  ##? standup

  docs::eval "$@"

  git log --reverse --branches --since=$(if [[ "Mon" == "$(date +%a)" ]]; then echo "last friday"; else echo "yesterday"; fi) --author=$(git config --get user.email) --format=format:'%C(cyan) %ad %C(yellow)%h %Creset %s %Cgreen%d' --date=local
}

function revert-last-commit() {
  ##? Crea nuevo commit deshaciendo el commit anteior, que lo invierta, si eliminanos un archivo este nuevo commit lo agregara,
  ##? manteniendo los commit en el historico, agregando un nuevo commit con la inversion.
  ##! OJO: Elimina el trabajo reralizado del working tree y staging area.
  #?? Sirve para respeter el historico
  #?? 1.0.0
  ##?
  ##? Usage:
  ##? revert-last-commit
  git revert @
}

function undo-last-commit() {
  ##? Quita el utltimo commit realizado (del historico), manteniendo los cambios en el Working Tree (antes del staging)
  ##? Para deshacer este commit no debe haber sido pusheado, de lo contrario se debera resolver conflictos con el repositorio remoto
  #?? 1.0.0
  ##?
  ##? Usage:
  ##? undo-last-commit
  echo "Ultimo commit deshecho 🤷🏻‍♂️\n"
  git reset HEAD~1 --mixed
}



# VARIABLES DE ENTORNO NVM (PARA OBTENER LOS COMANDOS NVM)
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm