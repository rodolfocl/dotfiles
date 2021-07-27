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