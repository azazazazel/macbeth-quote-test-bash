#! /bin/sh
# passgen, written by azazazazel

date +%s%N | cksum -a sha256 | cut -b 14-29