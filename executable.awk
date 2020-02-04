#!/usr/bin/awk -f

BEGIN {
    FS=":"
} 
/bash/ {
    print $1
}