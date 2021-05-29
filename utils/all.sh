echo "Got utils!"

srcfile() {
  tempfile="$(mktemp -u).$alias"
  curl -fsSL $1 >$tempfile
  source $tempfile
}

srcline() {
  tempfile="$(mktemp -u).$alias"
  curl -fsSL $1 | head -n$2 | tail -n$2 >$tempfile
  source $tempfile
}

srcpart() {
  tempfile="$(mktemp -u).$alias"
  curl -fsSL $1 | head -n$2 | tail -n$3 >$tempfile
  source $tempfile
}

srcfile "$url/utils/colors.sh"
srcfile "$url/utils/random.sh"
srcfile "$url/utils/usertype.sh"
