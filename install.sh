#!/bin/bash

repository="xmyr"
owner="nrjdalal"
alias="xmyr"

host="https://raw.githubusercontent.com"
path="/$owner/$repository/master"
url="$host$path"

resources="$(mktemp -u).$alias"
curl -fsSL $url/resources.sh >$resources
source $resources

if [[ -z "${BASH_VERSION}" ]]; then
  echo "Bash is required to interpret this script!"
  exit 1
fi

if [[ "$(uname)" != "Linux" ]]; then
  echo "$repository is only supported on Linux as of now."
  exit 1
fi

_ONLYSUDO_

curl -fsSL $url/bin/main.sh >/usr/bin/$alias
chmod +x /usr/bin/$alias

echo "${green}$repository is successfully installed.${off}"
