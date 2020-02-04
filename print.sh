#!/bin/bash
for f in 0*;do
     echo -e "### $f\n\n"'```';
     cat $f;
     echo -e '\n```';
done > README.md
