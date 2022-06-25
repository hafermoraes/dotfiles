#!/bin/bash

#updates=" "
updates=" "

# Linux Mint
if [ $(uname -a | grep -i ubuntu | wc -l) -gt 0 ]
then 
  updates+=$(apt list --upgradable 2>/dev/null | grep \/ | wc -l)  
fi

# OpenBSD
if [ $(uname -a | grep -i openbsd | wc -l) -gt 0 ]
then 
  updates+=$(syspatch -c | grep \/ | wc -l)  
fi

echo -e $updates
