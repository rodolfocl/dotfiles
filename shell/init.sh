
# Enable aliases to be sudo'ed
alias sudo="sudo "

# Registrar todos los aliases
for aliasToSource in "$DOTFILES_PATH/shell/_aliases"*; do source "$aliasToSource"; done

# Registrar todas las exportaciones
for exportToSource in "$DOTFILES_PATH/shell/_exports"*; do source "$exportToSource"; done

# Registrar todas las funciones
for functionToSource in "$DOTFILES_PATH/shell/_functions"*; do source "$functionToSource"; done
