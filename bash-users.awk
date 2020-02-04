BEGIN {
    FS=":"
} 
/bash/ {
    print $1
}