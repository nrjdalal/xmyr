#!/bin/bash

########################################

owner="nrjdalal"
repository="xamyr"
callname="xmyr"

host="https://raw.githubusercontent.com"
path="/$owner/$repository/master"
url="$host$path"

bin="$url/bin"
lib="$url/lib"

utilities="$(mktemp)"
curl -fsSL $url/utils.sh >$utilities
source $utilities
rm $utilities

########################################
