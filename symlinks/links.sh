
# EJECUTAR DESDE EL HOME /USERS/RODOLFOVENEGAS PARA EJECUTAR TODOS LOS ENLACES SIMBOLICOS DE UNA VEZ:
#
# sh .dotfiles/symlinks/links.sh

#EL PROBLEMA DE EJECUTARLO ASI ES QUE LOS ENLACES SE GUARDARAN EN EL DIRECTORIO SYMLINKS, LO MEJOR
#ES EJECUTARLO MANUALMENTE LOS LINKS

#sh .dotfiles/symlinks/links.sh in .dotfiles/git

# Eliminar un enlace simbolico: se debe pasar el nombre del enlace a unlink, dicho nombre es el
# nombre del archivo del cual se esta creando el link simbolico ejemplo: ".gitconfig -> .dotfiles/git/.gitconfig"
#
# unlink ./.gitconfig


# =======PASOS A EJECUTAR=======
# Mover archivos dentro de los dotfiles
# mv .gitconfig .dotfiles/git

# Crear link simbolico
# ln -s .dotfiles/git/.gitconfig

# ver todos los archivos y los con emlaces simbolicos
# ls -la

# ver solo los archivos que tengan enlace simbolico
# ls -la | grep "\->"

# Listados de links simbolicos
# ruta donde esta el archivo " " donde estaba antes el archivo

# ZSH
ln -s .dotfiles/shell/zsh/.zshrc $PWD/.zshrc

# BASH
ln -s .dotfiles/shell/bash/.bashrc $PWD/.bashrc
ln -s .dotfiles/shell/bash/.bash_profile $PWD/.bash_profile

# GIT
ln -s .dotfiles/git/.gitconfig $PWD/.gitconfig
ln -s .dotfiles/git/.gitignore_global $PWD/.gitignore_global

# iTerm2
# No tiene link simbolico se agrega directo desde la configuracion/general/preferences

# VSCODE
#ln -s .dotfiles/editors/vs-code/settings.json $PWD/Library/Application\ Support/code/user/settings.json
#ln -s .dotfiles/editors/vs-code/keybindings.json $PWD/Library/Application\ Support/code/user/keybindings.json
#ln -s .dotfiles/editors/vs-code/snippets $PWD/Library/Application\ Support/code/user/snippets
