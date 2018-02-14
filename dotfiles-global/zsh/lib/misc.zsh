## smart urls
autoload -U url-quote-magic
zle -N self-insert url-quote-magic

## file rename magick
bindkey "^[m" copy-prev-shell-word

## jobs
setopt long_list_jobs

## pager
export PAGER=less

set LC_CTYPE=en_US.UTF-8
set LC_ALL=en_US.UTF-8
set LANG=en_US.UTF-8

setopt rmstarsilent

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_11.jdk/Contents/Home

