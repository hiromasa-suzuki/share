# Created by newuser for 5.2


CUR_DIR=$(pwd)

export CALDB=/Users/suzuki/work/caldb
source $CALDB/software/tools/caldbinit.sh

#export HEADAS=/Users/suzuki/work/heasoft-6.18/x86_64-apple-darwin15.2.0
#source $HEADAS/headas-init.sh

export HEADAS=/Users/suzuki/work/heasoft-6.20/x86_64-apple-darwin15.6.0
alias heainit='source $HEADAS/headas-init.sh'

export FERMI_DIR=/Users/suzuki/work/fermi/LAT_science_tools/ScienceTools-v11r5p3-fssc-20180124-x86_64-apple-darwin15.6.0/x86_64-apple-darwin15.6.0
alias fermi-init='source $FERMI_DIR/fermi-init.sh; export DYLD_LIBRARY_PATH=/anaconda2/lib:$DYLD_LIBRARY_PATH; export DYLD_INSERT_LIBRARIES=$FERMI_DIR/lib/libf2c.so'

#export GEANT4=/Users/suzuki/work/geant4/geant4.10.03.p01-install
#export GEANT4=/Users/suzuki/work/geant4/geant4.10.04.p01-install
export GEANT4=/Users/suzuki/work/geant4/geant4.10.04.p01-install_ver3
cd $GEANT4/bin
source geant4.sh
#cd $GEANT4/share/Geant4-10.3.1/geant4make
cd $GEANT4/share/Geant4-10.4.1/geant4make
source geant4make.sh
cd $CUR_DIR
export LD_LIBRARY_PATH=~/work/geant4/geant4.10.04.p01-install_ver3/lib:$LD_LIBRARY_PATH

## -- pyROOT
#export ROOTSYS=/usr/local/Cellar/root/5.34.34_1
export ROOTSYS=/usr/local/Cellar/root/6.10.08
export PYTHONPATH=$ROOTSYS/lib/root

export ANLNEXT_INSTALL=/Users/suzuki
export RUBYLIB=${ANLNEXT_INSTALL}/lib/ruby:${RUBYLIB}

export PATH="/usr/local/opt/make/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/qt/bin:$PATH"

alias dc='cd'
alias ..='cd ../'
alias ls='ls -FG'
alias root='/usr/local/Cellar/root/5.34.34_1/bin/root -l'   # root 5

alias galileo='ssh -XY suzuki@galileo.phys.s.u-tokyo.ac.jp'
alias pallas='ssh -XY suzuki@pallas'
alias sl='ls -FG'
alias ks='ls -FG'
alias sk='ls -FG'
alias ll='ls -lht'
alias ss='ls -s -h'
alias pw='pwd'
alias df='df -h'
alias du='du -h'
alias dus='du -hs'
alias ping_yahoo='ping -c 10 yahoo.co.jp'
alias hist='history'
alias -g G='| grep'

alias fkey='fkeyprint'
alias fpar='fparkey'
alias sel='xselect'
alias spe='xspec'
#alias g4make='cmake ../source;make;make install;install_name_tool -add_rpath ~/Qt5.8.0/5.8/clang_64/lib ../bin/Application_Main '
alias g4make='cmake ../source;make;make install'

alias r++='g++ 'root-config --cflags --lib''

alias freecad='open /Users/suzuki/FreeCAD/FreeCAD_windows/FreeCAD_win.exe'


#for zsh
PROMPT='
%F{white}%T %m%f %F{cyan} %~ %f 
$ '



#for bash
#PS1='
#\[\e[1;37m\] \t \H \[\e[0;36m\] \w
#\[\e[m\] \[\e[0;36m\]\$\[\e[m\] \[\e[1;37m\]'
export LSCOLORS=GxDxcxdxbxegedabagacad


zstyle ':completion:*:default' menu select=1
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin/usr/sbin /usr/bin /sbin /bin

setopt share_history
setopt hist_ignore_all_dups
setopt auto_menu

fish
