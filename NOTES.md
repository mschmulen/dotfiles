

#Vim 

- Add this to VIM folder 

https://github.com/davidbeckingsale/writegood.vim.git





# don't do this for dumb terminals
```
if [ "$TERM" != "dumb" ]; then
 if [ $(uname) == "Linux"  ]; then
   # Linux
   alias ls='ls --color=auto'
   LS_COLORS='di=33:fi=0:ln=95:pi=5:so=5:bd=5:cd=5:or=37:mi=0:ex=31:*.rpm=90'
 else
   # OS X   
   alias ls='ls -G'
   export LSCOLORS=dxfxcxdxbxegedabagacad
 fi
 #This is for everyone       
 export CLICOLOR=1
fi
```

###Other Installs

- [TextMate](http://macromates.com/)
- [ScreenFlow](http://www.telestream.net/screenflow/overview.htm)
- [Skype](http://www.skype.com)
- [Mou](http://mouapp.com/ ), [Mou.zip](http://mouapp.com/download/Mou.zip) 
- [Android] (http://developer.android.com/index.html)
- [iterm2](http://www.iterm2.com/#/section/home)
- [Vagrant](http://www.vagrantup.com/)
- [virtualBox](https://www.virtualbox.org/)
- [Brew] ( ) 
```
ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go/install)" 
```



