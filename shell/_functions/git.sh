source /Users/rodolfovenegas/.dotfiles/shell/_functions/global.sh


function pretty-diff() {
  # Ver git diff con un previsualizador de los cambios en la terminal
  # Utilizando fzf: bre install fzf
  ##?
  ##? Usage:
  ##? pretty-diff, al dar enter en un archivomodificado copia el path del archivo

  if (! git rev-parse HEAD >/dev/null 2>&1 ); then
    echo "\n${DGRAY}===========================================${NC}"
    echo "${YELLOW}El directorio, no es un repositorio de GIT!${YELLOW}"
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