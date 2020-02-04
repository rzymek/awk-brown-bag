### 01-log.awk

```
function time() {
    match($0, /^(....)-(..)-(..) (..):(..):(..)[.](...)(.*)/, g)
    milis=g[7]
    return mktime(g[1] " " g[2] " " g[3] " " g[4] " " g[5] " " g[6])*1000+milis
}
/REST request to publish UseCase/ {
    publish=time()
}
/======== Ended publication/{
    print FILENAME " publish: " (time()-publish)/1000
}
```
### 02-bash-users.awk

```
BEGIN {
    FS=":"
} 
/bash/ {
    print $1
}
```
### 03-shell-count.awk

```
BEGIN {
  FS=":"
} 
$3 > 100 {
  shells[$7]=shells[$7]  $1 " "
} 
END { 
  for (sh in shells) print sh ": " shells[sh] 
}
```
### 04-markdown.awk

```
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
```
### 05-executable.awk

```
#!/usr/bin/awk -f

BEGIN {
    FS=":"
} 
/bash/ {
    print $1
}
```
