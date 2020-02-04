# curl https://raw.githubusercontent.com/nodejs/node/master/README.md

start && /^###/ {
  exit
} 
/^### TSC/ {
  start=1;next
}
start {
  print
}