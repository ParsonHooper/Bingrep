bingrep () {
  if [ $# = 1 ] && [ $1 = '-h' -o $1 = '-help' -o $1 = '--help' ]
  then echo "Usage: bingrep [searchRegex] [searchFile]" && return
  elif [ $# -lt 2 ]
  then echo "ERROR: Too few arguments" && echo "Usage: bingrep [searchRegex] [searchFile]" && return
  elif [ $# -gt 2 ]
  then echo "ERROR: Too many arguments" && echo "Usage: bingrep [searchRegex] [searchFile]" && return
  else grep -bor --binary-files=text $1 $2
  fi
}
