#!/bin/bash
#
#  Copyright (c) 2019  Jeong Han Lee
#
#  The program is free software: you can redistribute
#  it and/or modify it under the terms of the GNU General Public License
#  as published by the Free Software Foundation, either version 2 of the
#  License, or any newer version.
#
#  This program is distributed in the hope that it will be useful, but WITHOUT
#  ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
#  FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
#  more details.
#
#  You should have received a copy of the GNU General Public License along with
#  this program. If not, see https://www.gnu.org/licenses/gpl-2.0.txt
#
#
#   author  : Jeong Han Lee
#   email   : jeonghan.lee@gmail.com
#   date    : Wednesday, December 11 09:43:15 CET 2019
#   version : 0.0.2


declare -gr SC_SCRIPT="$(realpath "$0")"
declare -gr SC_SCRIPTNAME=${0##*/}
declare -gr SC_TOP="${SC_SCRIPT%/*}"
declare -gr SC_LOGDATE="$(date +%y%m%d%H%M)"

function pushd { builtin pushd "$@" > /dev/null; }
function popd  { builtin popd  "$@" > /dev/null; }


function die
{
    error=${1:-1}
    ## exits with 1 if error number not given
    shift
    [ -n "$*" ] &&
	printf "%s%s: %s\n" "$scriptname" ${version:+" ($version)"} "$*" >&2
    exit "$error"
}


rm -rf *.png

wget -O Berkeley.png wttr.in/Berkeley_Fm.png
#wget -O Lund.png wttr.in/Lund_Fm.png
wget -O Busan.png wttr.in/Busan_Fm.png
wget -O Aberdeen.png wttr.in/Aberdeen_Fm.png

#mv Lund.png Lund_Fm.png
mv Berkeley.png.png Berkeley_Fm.png
mv Busan.png Busan_Fm.png
mv Aberdeen.png Aberdeen_Fm.png


exit
