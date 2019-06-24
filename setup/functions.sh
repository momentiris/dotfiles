fancy_echo() {
  local fmt="$1"; shift
  local LIGHTBLUE='\033[1;34m'

  printf "\n${LIGHTBLUE}$fmt\n" "$@"
}