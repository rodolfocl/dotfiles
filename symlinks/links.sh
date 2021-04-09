
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
#Mover archivos dentro de los dotfiles
#mv .gitconfig .dotfiles/git

#Crear link simbolico
#ln -s .dotfiles/git/.gitconfig

#ver todos los archivos y los con emlaces simbolicos
#ls -la

#ver solo los archivos que tengan enlace simbolico
#ls -la | grep "\->"

# Listados de links simbolicos
# ruta donde esta el archivo " " donde estaba antes el archivo

#GIT
ln -s .dotfiles/git/.gitconfig $PWD/.gitconfig
ln -s .dotfiles/git/.gitignore_global $PWD/.gitignore_global

#BASH

#ZSH