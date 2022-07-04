
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
# Mover archivos dentro de los dotfiles o Eliminar el archivo en la raiz del proyecto, ya que al existir en los dotfiles se hace solo el enlace simbolico, no debe existir para poder crearlo:
# MOVER:
# mv .gitconfig .dotfiles/git
# ELIMINAR:
# Seleccionar archivo y eliminar

# Crear link simbolico
# ln -s .dotfiles/git/.gitconfig

# ver todos los archivos y los con emlaces simbolicos
# ls -la

# ver solo los archivos que tengan enlace simbolico
# ls -la | grep "\->"

# Listados de links simbolicos
# ruta donde esta el archivo " " donde estaba antes el archivo
# Ver video si quedan dudas: https://onedrive.live.com/?cid=1C5A9C77DFE4D4B9&id=1C5A9C77DFE4D4B9%21126149&parId=1C5A9C77DFE4D4B9%21126136&o=OneUp

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

# Karabiner-elements
# mv .config/karabiner/karabiner.json .dotfiles/so/mac/karabiner-elements/
ln -s .dotfiles/so/mac/karabiner-elements/karabiner.json $PWD/.config/karabiner/karabiner.json


# VSCODE
#ln -s .dotfiles/editors/vs-code/settings.json $PWD/Library/Application\ Support/code/user/settings.json
#ln -s .dotfiles/editors/vs-code/keybindings.json $PWD/Library/Application\ Support/code/user/keybindings.json
#ln -s .dotfiles/editors/vs-code/snippets $PWD/Library/Application\ Support/code/user/snippets
