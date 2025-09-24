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
alias integrations='cd Documents/cmt/integrations'
alias sage='cd Documents/cmt/sage'
alias general='cd Documents/cmt/general'
alias data='cd Documents/cmt/integrations/data-collector-server'
alias queue='cd Documents/cmt/integrations/queue-management-server'
alias conf='cd Documents/cmt/integrations/confirmation-message-server'
alias bionet='cd Documents/cmt/integrations/labocdory-bionet'
alias bupa='cd Documents/cmt/integrations/laboratory-server'


# Execute projects
alias go='npm run start:dev'
alias dev="npm run dev"
