rndall() {
  base64 </dev/urandom | tr -dc 'a-zA-Z0-9' | head -c$1
}

rndabc() {
  base64 </dev/urandom | tr -dc 'a-z' | head -c$1
}

rnd123() {
  base64 </dev/urandom | tr -dc '0-9' | head -c$1
}
