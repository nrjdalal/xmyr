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

echo $red/bleed/$green/lol$off
