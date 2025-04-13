#================================================================
# IMPORTO VARIABLES GLOBALES
source /Users/rodolfovenegas/.dotfiles/shell/_global/variables.sh
#================================================================

# CENTRO MEDICO DEL TRABAJADOR

# Node versions
alias 22="nvm use 22.14.0"
alias 18="nvm use 18.20.6"
alias 16="nvm use 16.20.2"

# Generales
alias host="sudo vim /private/etc/hosts"
alias rs="source ~/.zshrc "

# Directories CMT
alias cmt='cd Documents/cmt'
alias data='cd Documents/cmt/data-collector-server'
alias queue='cd Documents/cmt/queue-management-server'
alias lab='cd Documents/cmt/laboratory-server'
alias conf='cd Documents/cmt/confirmation-message-server'
alias sage='cd Documents/cmt/sage'



# Directories Api Backoffice-authenticator
alias apib='cd Documents/cns/authenticator/api-seguros-backoffice'
alias microsoft='cd Documents/cns/authenticator/ms-microsoft-facade'

# Execute projects
alias go='npm run start:dev'
alias dev="npm run dev"
