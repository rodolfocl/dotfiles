# Color texto
RED='\033[0;31m'
DGRAY='\033[1;30m'
YELLOW='\033[1;33m'
LCYAN='\033[1;36m'
NC='\033[0m' # No Color

# Background color texto
B_WHITE='\e[0;47m'
B_NC='\e[0m' # No Color

# Formato texto
bold=$(tput bold)
normal=$(tput sgr0)


function pretty-diff() {
  # Ver git diff con un previsualizador de los cambios en la terminal
  # Utilizando fzf: bre install fzf

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