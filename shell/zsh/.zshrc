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
plugins=(git zsh-autosuggestions)

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

# ============================================================================================
# =================================SCRIPTS PERSONALIZADOS=====================================
# ============================================================================================

# ===============================================================
# IMPORTO ARCHIVO INDEX REDIRECCIONANDO A LOS ALIASES Y FUNCIONES
source /Users/rodolfovenegas/.dotfiles/shell/init.sh
# ===============================================================

# Para ver ejemplo de sintaxys de shell script
# https://devhints.io/bash

# Colores para el texto
# https://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux


# Colores para el background del texto
# https://nick3499.medium.com/bash-echo-text-color-background-color-e8d8c41d5a91
# https://tecadmin.net/change-background-color-of-text-in-linux-shell/



# =====STRING QUE SE MUESTRA AL INICIAR CONSOLA=====
# echo "Hola"
# cat .demonio #Imagen en consola


# =====FUNCIONES=====

function act() {
  git status
  if [ $? -eq 0 ]; then
    echo "\n PULL realizado con exito...\n"
    pm2 restart tt
   echo "\n --------------------------------------"
   echo " Teachertrack reiniciado correctamente \n"
   echo "Código ejecucion: $? Sin error"
   echo "--------------------------------------"
  else
    echo "--------------------------------------"
    echo "Ocurrio un error al hacer PULL"
    echo "Código ejecucion: $? Error"
    echo "-------------------------------------- \n"
    echo "Ejecutando git 'status'...n"
    git status
  fi
}

function hola(){
  echo  "holaaaaaaaabetaaa"
}


# function progress_bar(){
#   echo -ne "${B_WHITE}##################${B_NC}                                               ${bold}(33%)${normal} \r\c"
#   sleep 0.1
#   echo -ne "${B_WHITE}########################################${B_NC}                         ${bold}(68%)${normal} \r\c"
#   sleep 0.1
#   echo -ne "${B_WHITE}#################################################${B_NC}                ${bold}(83%)${normal} \r\c"
#   sleep 0.1
#   echo -ne "${B_WHITE}################################################################${B_NC} ${bold}(100%)${normal} \r\c"
#   sleep 0.3
#   echo ""
#   echo ""
# }


# Funciones para iniciar proyectos con sus respectivas versiones de node.
# function api_ {
#   echo "💥 CARGANDO COLEGIUM-API"
#   cd Documents/cloud/colegium-api
#   pwd
#   nvm use 4.9.1
#   echo ""
#   echo "⚙️  INICIANDO PROYECTO..."
#   echo ""
#   nodemon colegium_api.js
# }

# function pos_ {
#   echo "💥 CARGANDO POSTULACIONES"
#   cd Documents/cloud/postulaciones
#   pwd
#   nvm use 4.9.1
#   echo ""
#   echo "⚙️  INICIANDO PROYECTO..."
#   echo ""
#   nodemon postulaciones.js
# }

# function ext_ {
#   echo "💥 CARGANDO EXTRACURRICULARES"
#   cd Documents/cloud/extracurriculares
#   pwd
#   nvm use 4.9.1
#   echo ""
#   echo "⚙️  INICIANDO PROYECTO..."
#   echo ""
#   nodemon extracurriculares.js
# }

# function tt_ {
#   echo "💥 ${LCYAN}CARGANDO TEACHERTRACK${NC}"
#   echo ""
#   cd Documents/webapp/teachertrack-webapp
#   pwd
#   nvm use 10.4.1
#   echo ""
#   echo "⚙️  INICIANDO PROYECTO..."
#   echo ""
#   npm run dev
# }

# function apic_ {
#   echo "💥 ${LCYAN}CARGANDO COLEGIUMCLOUD-API${NC}"
#   echo ""
#   cd Documents/webapp/colegiumcloud-api
#   pwd
#   nvm use 10.4.1
#   echo ""
#   echo "⚙️  INICIANDO PROYECTO..."
#   echo ""
#   npm run dev
# }

# function esb_ {
#   echo "💥 ${LCYAN}CARGANDO COLEGIUMCLOUD-API_ESB${NC}"
#   echo ""
#   cd Documents/webapp/colegiumcloud-api_esb
#   pwd
#   nvm use 10.4.1
#   echo ""
#   echo "⚙️  INICIANDO PROYECTO..."
#   echo ""
#   npm run dev
# }


export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm