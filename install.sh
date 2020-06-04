#!/bin/bash
<< description
This script is used to customize the working environment.

Date:	2020/06/04
Author:	ycliang ycliang@andestech.com
description

dir=`pwd`
dotfiles=".bashrc .vimrc"

install()
{
	home=$1
	for f in $dotfiles; do
		cp $dir/$dotfiles $home/.
	done
}

show_help()
{
	echo '[usage] ./install.sh <option>'
	echo 
	echo '[option]'
	echo '    -d <$HOME>    SHOME is the home directory of user'
	echo '    -h | --help   Show this message'
}

main()
{
	case $1 in
		-d)
			HOME=$2
			install $HOME;;
		*)
			show_help;;
	esac
}

main $@

