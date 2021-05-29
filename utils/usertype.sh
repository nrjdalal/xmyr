_ONLYSUDO_() {
  if [[ $(id -u) -ne 0 ]]; then
    echo "Given command requires sudo access!"
  fi
}

_ONLYUSER_() {
  if [[ $(id -u) -eq 0 ]]; then
    echo "Don't run this as root!"
  fi
}
