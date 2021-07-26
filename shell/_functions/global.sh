#================================================================
# IMPORTO VARIABLES GLOBALES
source /Users/rodolfovenegas/.dotfiles/shell/_functions/variables.sh
#================================================================



#===============================================
# FUNCIONES UTILIZADOS PARA TRABAJAR EN COLEGIUM
#===============================================

function run() {
  # Parametro ingresado a la funcion
  typeset PROYECTO
  PROYECTO="$1"

  if [[ ! "$PROYECTO" ]]; then
    echo ""
    echo "⚠️  ADVERTENCIA: Debes indicar que proyecto deseas ejecutar."
    echo "   Uso: run <proyecto>"
    echo ""
    echo " ${DGRAY}----------------------------${NC}"
    echo "→ ${YELLOW}api${NC} : Colegium-api "
    echo "→ ${YELLOW}pos${NC} : Postulaciones "
    echo "→ ${YELLOW}ext${NC} : Extracurriculares "
    echo "→ ${YELLOW}inha${NC}: Inhabilidad "
    echo "→ ${YELLOW}ori${NC} : Orientacion OyS "
    echo "→ ${YELLOW}ges${NC} : Gestion de talento GDT "
    echo "→ ${YELLOW}tt${NC}  : TeacherTrack  "
    echo "→ ${YELLOW}sn4${NC} : Schoolnet4 "
    echo "→ ${YELLOW}app${NC} : appbasefrontend "
    echo "→ ${YELLOW}apic${NC}: colegiumcloud-api "
    echo "→ ${YELLOW}esb${NC} : colegiumcloud-api_esb "
    echo "→ ${YELLOW}pa${NC} : procesosautomaticos_esb "
    echo " ${DGRAY}----------------------------${NC}"
    echo ""

  else
    # VUELVO AL HOME
    cd

    # COLEGIUM-API
    if [[ "api" == "$PROYECTO" ]]; then
      echo "💥 ${LCYAN}CARGANDO COLEGIUM-API${NC}"
      echo ""
      cd Documents/cloud/colegium-api
      pwd
      nvm use 4.9.1
      echo ""
      echo "⚙️  INICIANDO PROYECTO..."
      echo ""
      # progress_bar
      nodemon colegium_api.js

    # POSTULACIONES
    elif [[ "pos" == "$PROYECTO" ]]; then
      echo "💥 ${LCYAN}CARGANDO POSTULACIONES${NC}"
      echo ""
      cd Documents/cloud/postulaciones
      pwd
      nvm use 4.9.1
      echo ""
      echo "⚙️  INICIANDO PROYECTO..."
      echo ""
      # progress_bar
      nodemon postulaciones.js

    # EXTRACURRICULARES
    elif [[ "ext" == "$PROYECTO" ]]; then
      echo "💥 ${LCYAN}CARGANDO EXTRACURRICULARES${NC}"
      echo ""
      cd Documents/cloud/extracurriculares
      pwd
      nvm use 4.9.1
      echo ""
      echo "⚙️  INICIANDO PROYECTO..."
      echo ""
      # progress_bar
      nodemon extracurriculares.js

      # INHABILIDAD
      elif [[ "inha" == "$PROYECTO" ]]; then
      echo "💥 ${LCYAN}CARGANDO INHABILIDAD DOCENTE${NC}"
      echo ""
      cd Documents/cloud/inhabilidad_docente
      pwd
      nvm use 4.9.1
      echo ""
      echo "⚙️  INICIANDO PROYECTO..."
      echo ""
      nodemon inhadoc.js

      elif [[ "ori" == "$PROYECTO" ]]; then
      echo "💥 ${LCYAN}CARGANDO ORIENTACION Y SEGUIMIENTO${NC}"
      echo ""
      cd Documents/cloud/orientacion
      pwd
      nvm use 4.9.1
      echo ""
      echo "⚙️  INICIANDO PROYECTO..."
      echo ""
      nodemon orientacion.js

      elif [[ "ges" == "$PROYECTO" ]]; then
      echo "💥 ${LCYAN}CARGANDO GESTION DE TALENTOS${NC}"
      echo ""
      cd Documents/cloud/gdd
      pwd
      nvm use 4.9.1
      echo ""
      echo "⚙️  INICIANDO PROYECTO..."
      echo ""
      nodemon gdd.js

    # TEACHERTRACK
    elif [[ "tt" == "$PROYECTO" ]]; then
      echo "💥 ${LCYAN}CARGANDO TEACHERTRACK${NC}"
      echo ""
      cd Documents/webapp/teachertrack-webapp
      pwd
      nvm use 10.15.3
      echo ""
      echo "⚙️  INICIANDO PROYECTO..."
      echo ""
      npm run dev

    # SCHOOLNET4
    elif [[ "sn4" == "$PROYECTO" ]]; then
      echo "💥 ${LCYAN}CARGANDO SCHOOLNET4${NC}"
      echo ""
      cd Documents/webapp/schoolnet4-webapp
      pwd
      nvm use 10.15.3
      echo ""
      echo "⚙️  INICIANDO PROYECTO..."
      echo ""
      npm run dev

    # COLEGIUMCLOUD-APPBASEFRONTEND
    elif [[ "app" == "$PROYECTO" ]]; then
      echo "💥 ${LCYAN}CARGANDO CCOLEGIUMCLOUD-APPBASEFRONTEND${NC}"
      echo ""
      cd Documents/webapp/appbasefrontend
      pwd
      nvm use 15.13.0
      echo ""
      echo "⚙️  INICIANDO PROYECTO..."
      echo ""
      npm run dev

    # COLEGIUMCLOUD-API
    elif [[ "apic" == "$PROYECTO" ]]; then
      echo "💥 ${LCYAN}CARGANDO COLEGIUMCLOUD-API${NC}"
      echo ""
      cd Documents/webapp/colegiumcloud-api
      pwd
      nvm use 10.15.3
      echo ""
      echo "⚙️  INICIANDO PROYECTO..."
      echo ""
      npm run dev

    # COLEGIUMCLOUD-API_ESB
    elif [[ "esb" == "$PROYECTO" ]]; then
      echo "💥 ${LCYAN}CARGANDO COLEGIUMCLOUD-API_ESB${NC}"
      echo ""
      cd Documents/webapp/colegiumcloud-api_esb
      pwd
      nvm use 10.15.3
      echo ""
      echo "⚙️  INICIANDO PROYECTO..."
      echo ""
      npm run dev

    # PROCESOSAUTOMATICOS_ESB
    elif [[ "pa" == "$PROYECTO" ]]; then
      echo "💥 ${LCYAN}CARGANDO PROCESOSAUTOMATICOS_ESB${NC}"
      echo ""
      cd Documents/webapp/procesosautomaticos_esb
      pwd
      nvm use 10.15.3
      echo ""
      echo "⚙️  INICIANDO PROYECTO..."
      echo ""
      npm run dev

    else
      echo ""
      echo "${DGRAY}###################################################${NC}"
      echo "${DGRAY}# ${NC}👹 ${RED}ERROR:${NC} El proyecto ingresado no es valido 👹${DGRAY} #${NC}"
      echo "${DGRAY}###################################################${NC}"
      echo ""
      cat .dotfiles/shell/_images/.murcielago
      echo ""
    fi
  fi
}