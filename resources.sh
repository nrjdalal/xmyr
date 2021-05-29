echo "Got Resources!"

utils="$(mktemp -u).$alias"
curl -fsSL $url/utils/all.sh >$utils
source $utils
