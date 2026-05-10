#! /bin/sh
# passgen, written by azazazazel

length=15

while getopts "l:" arg; do
  case $arg in
    l) length=$OPTARG;;
  esac
done

length=$(( $length + 13 ))
date +%s%N | cksum -a sha256 | cut -b 14-$length