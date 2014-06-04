#
# Some example functions:
#
# a) function settitle
settitle () { 
  echo -ne "\e]2;$@\a\e]1;$@\a"; 
}

source ~/.bash/functions/cd_func
source ~/.bash/functions/pathadd

