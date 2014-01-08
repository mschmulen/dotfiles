export CLICOLOR=1
#export LSCOLORS=GxFxCxDxBxegedabagaced

# color things 
export GREP_OPTIONS='--color=auto'

# set custom bash prompt
export PS1="\[\033[1;34m\]\!\[\033[0m\] \[\033[1;35m\]\u\[\033[0m\]:\[\033[1;35m\]\W\[\033[0m\]$ "

#add /usr/local/bin to path
export PATH=/usr/local/bin:$PATH
export JAVA_HOME=/Library/Java/Home

#  ---------------------------------------------------------------------------
#code snippets
# alias snip='echo snip-strong snip-ycomb snip-fib'
# alias snip-strong-view='pbcopy < ~/snip/strong-view.js'
# alias snip-ycomb='pbcopy < ~/snip/ycombinator.js'
# alias snip-n-fib='pbcopy < ~/snip/node/fib.js'
# alias snip-n-server='pbcopy < ~/snip/node/server.js'
# alias snip-n-fib='pbcopy < ~/snip/node/fib.js'


#echo 'Hello World!' | pbcopy
#echo `pbpaste`

#  ---------------------------------------------------------------------------
#alias getpath='echo -n $PWD|pbcopy|echo "current path copied to clipboard"'
#alias getpath='pwd | tr -d "\r\n" | pbcopy'

#RaspberryPi
alias pime='ssh 192.168.2.2 -l pi'


#  ---------------------------------------------------------------------------
alias c9='~/nodelife/strongloop/c9/cloud9/bin/cloud9.sh'
alias webdev="open /Applications/Google\ Chrome.app --args --allow-file-access-from-files"
alias chrome="open /Applications/Google\ Chrome.app --args &"
#alias chrome="open /Applications/Google\ Chrome.app"
#alias chrome="open /Applications/Google\ Chrome.app/ --args -disable-web-security -allow-file-access-from-files -start-maximized"
#alias chrome-android="chrome --user-agent='Mozilla/5.0 (Linux; U; Android 0.5; en-us) AppleWebKit/522+ (KHTML, like Gecko ) Safari/419.3'"

# chromium depot tools
#export PATH=/Users/mattschmulen/life-chromium/depot_tools:$PATH

#  ---------------------------------------------------------------------------

#add android tools
export ANDROID_SDK=$HOME/Library/Developer/Android
export PATH=${PATH}:$HOME/Library/Developer/Android/sdk/platform-tools
export PATH=${PATH}:$HOME/Library/Developer/Android/sdk/tools

#Titanium Configurations
alias titaniumold="$HOME/Library/Application\ Support/Titanium/mobilesdk/osx/2.1.3.GA/titanium.py"
alias modandroid="titaniumold create --platform=android --type=module --dir=. --name=mymodule --id=com.appc.mymodule --android=/Users/mattschmulen/Library/Developer/Android/adt-bundle-mac-x86_64-20130717/sdk"
alias modiphone="titaniumold create --platform=iphone --type=module --dir=. --name=mymodule --id=com.appc.mymodule"
alias tiphone="titanium run --platform=iphone"

#  ---------------------------------------------------------------------------

#  ---------------------------------------------------------------------------
# Setup Amazon EC2 Command-Line Tools
#  ---------------------------------------------------------------------------
# export EC2_HOME=~/.ec2
# export PATH=$PATH:$EC2_HOME/bin
# export EC2_PRIVATE_KEY=`ls $EC2_HOME/pk-*.pem`
# export EC2_CERT=`ls $EC2_HOME/cert-*.pem`
#us-west-1b
# export EC2_URL=https://ec2.us-west-1.amazonaws.com
#  ---------------------------------------------------------------------------

#  ---------------------------------------------------------------------------
# Added by the Heroku Toolbelt
#  ---------------------------------------------------------------------------
export PATH="/usr/local/heroku/bin:$PATH"


#  ---------------------------------------------------------------------------
#   VIM
#  ---------------------------------------------------------------------------

#alias vim="echo using 'mvim -v';mvim -v"
#alias mvim="open /Applications/MacVim-snapshot-66/mvim &"
export PATH=${PATH}:/Applications/MacVim-snapshot-66


#  ---------------------------------------------------------------------------
#  GIT
#  ---------------------------------------------------------------------------
alias gs="git status"
alias ga="git add"
alias go="git checkout"
alias gc="git commit"
#alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
#alias gl='git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset %Cred(Author: %ae)%Creset" --abbrev-commit --date=relative'
alias gp="git push"
alias gd="git diff"

#**************************showing git branches in bash prompt***********************************
function is_git_dirty {
   [[ $(git status -z | grep -v '^\?') != "" ]] && echo "*"
}

function parse_git_branch {
  #Ensure this is only run in git directories
  if [ -d ".git" ] || git rev-parse --git-dir > /dev/null 2>&1 ; then
    #Ensure this is not run in the webkit repo (takes too long)
    if [ ${PWD##*/} != "webkit" ]; then
      git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1$(is_git_dirty)]/"
    fi
  fi
}
#*************************Git Completion*********************************************************


#MISC

#  ---------------------------------------------------------------------------
#  Vagrant aliases
#  ---------------------------------------------------------------------------
alias vl="VBoxManage list runningvms"
alias vu="vagrant up"
alias vd="vagrant suspend"
alias vr="vagrant reload"
alias vs="vagrant ssh"
# How do I destroy a VM when I deleted the .vagrant file
# http://stackoverflow.com/questions/15408969/how-do-i-destroy-a-vm-when-i-deleted-the-vagrant-file
# $ VBoxManage list runningvms
# $ VBoxManage controlvm <uuid> poweroff
# $ VBoxManage unregistervm <uuid>

#  ---------------------------------------------------------------------------
#  Configure go 
#  ---------------------------------------------------------------------------
export PATH=$PATH:/usr/local/go/bin

#  ---------------------------------------------------------------------------
#  Misc
#  ---------------------------------------------------------------------------

# MacPorts Installer addition on 2013-03-19_at_09:10:02: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# --------------------
# END OF BASH_PROFILE
# --------------------
