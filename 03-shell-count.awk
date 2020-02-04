BEGIN {
  FS=":"
} 
$3 > 100 {
  shells[$7]=shells[$7]  $1 " "
} 
END { 
  for (sh in shells) print sh ": " shells[sh] 
}