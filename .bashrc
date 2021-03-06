# add your local .bashrc customization here

#if [ -t 0 ]; then
#	# if interactive shell
#	unalias ls
#fi

alias bp='vim ~/.bashrc.private'
alias sbp='source ~/.bashrc.private'
alias vrc='vim ~/.vimrc'
alias cly='cd /local/ycliang'
alias gdf='cd ~/dotfiles; git add .; git commit; git push; cd -'
alias tool='echo $PATH | cut -d ":" -f 1'


export PS1="\u[\H] \033[1;34m\A \033[1;33m\w \033[6;32m$(__git_ps1 "(%s)")\033[m\n\$ "
export PATH=/usr/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH=/local/ycliang/toolchains-bin:$PATH

asttool() 
{ 
	OLDP=`echo $PATH | cut -d ':' -f 2-`
	export PATH=/local/ycliang/toolchains-bin/nds32le-linux-glibc-v5/bin:$OLDP
}
bsptool()
{
	OLDP=`echo $PATH | cut -d ':' -f 2-`
	export PATH=/home/users/sqa/BSP-latest/nds32le-linux-glibc-v5d/bin:$OLDP
}
