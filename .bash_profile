#!/bin/bash

alias sv='supervisor'
alias ..='cd ..'
alias ...='cd ../..'
alias la='ls -aGFh'
alias gpom='git push origin master'
alias gc='git commit -am'
alias express='express --ejs --css less'
alias ls='ls -GFh'
alias rpirc='irssi -c -SSL rpirc.piratejon.com -p 9999 -n tdogg69'
alias chromedev='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome -allow-file-access-from-files'
#alias screen='screen -T xterm-256color'
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
source ~/.zer0prompt
zer0prompt
unset zer0prompt

# Toggle showing hidden files -------------------------------------------------
function showHidden 
{
    defaults write com.apple.Finder AppleShowAllFiles TRUE
    killall Finder
}

function hideHidden
{
    defaults write com.apple.Finder AppleShowAllFiles FALSE
    killall Finder
}

##
# Your previous /Users/tforbus/.bash_profile file was backed up as /Users/tforbus/.bash_profile.macports-saved_2013-02-19_at_16:53:21
##

# MacPorts Installer addition on 2013-02-19_at_16:53:21: adding an appropriate PATH variable for use with MacPorts.
export PATH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.
