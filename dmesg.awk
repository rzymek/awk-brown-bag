#/\] [^ ]/ { matching=0 }
#/KERNEL supported cpus/ { matching=1 }
#matching && /\]  / { print }

/eth0: RTL/ { print }
/ntfs/ {print }
