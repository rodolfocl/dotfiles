# =====================================
# EXPORTACIONES DE ARCHIVOS SH
# =====================================

# REFERENCIA
# Incluir archivo en otro en bash
# https://www.sololinux.es/incluir-un-script-bash-en-otro-script-bash/

# The Bash for loop
# https://askubuntu.com/questions/315335/bash-command-for-each-file-in-a-folder

# Habilitar alias para sudo
alias sudo="sudo "

# Registro todos los aliases
#for aliasToSource in "/Users/rodolfovenegas/.dotfiles/shell/_aliases/config.sh"*; do source "$aliasToSource"; done
for aliasToSource in "/Users/rodolfovenegas/.dotfiles/shell/_aliases/"*.sh; do source "$aliasToSource"; done

# Registro todas las funciones
for functionToSource in "/Users/rodolfovenegas/.dotfiles/shell/_functions/"*.sh; do source "$functionToSource"; done

# Registro todas las exportaciones
#for exportToSource in "/Users/rodolfovenegas/.dotfiles/shell/_exports"*; do source "$exportToSource"; done