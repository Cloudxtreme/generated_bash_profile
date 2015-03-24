#!/bin/sh
# paths
export PATH=~/.rbenv/shims:$PATH
export PATH=$PATH:usr/local/bin # homebrew
export PATH=$PATH:~/bin
export PATH=$PATH:/opt/local/bin
export PATH=$PATH:/opt/local/sbin
export PATH=$PATH:/usr/local/bin/gem
export PATH=$PATH:/usr/local/mysql/bin
#development

export WEBSOLR_URL=localhost:8983

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
#aliases
alias ll='/bin/ls -lah'
alias aa="svn status | grep '?' | awk '{print $2}' | xargs svn add"
alias g="git"
alias gd="git difftool"
alias gdm="git diff . | mate"
alias gs="git status"
alias gc="git commit"
alias gca="git commit -a"
alias ll="ls -las"
alias g="git"
alias gdm="git diff . | mate"

function gdel {
  git status | awk '/deleted: (.*)/ {print $3}' | xargs git rm -f;
}

# https://gist.github.com/427815
# script/server with Rails 3 support
ss() {
  if [ -f ./script/rails ]; then
    ./script/rails server $@
  else
    ./script/server $@
  fi
}

# script/console with Rails 3 support
sc() {
  if [ -f ./script/rails ]; then
    ./script/rails console $@
  else
    ./script/console $@
  fi
}

# script/generate with Rails 3 support
sg() {
  if [ -f ./script/rails ]; then
    ./script/rails generate $@
  else
    ./script/generate $@
  fi
}

rr() {
  rake
  if [ $? -gt 0 ]; then
    say "Some tests failed."
    echo "Some tests failed."
  else
    say "All tests green."
    echo "All tests green."
  fi
}


# capistrano stuff: http://www.deprec.org/trac.cgi/wiki/UsageDocs
alias cap1="`which cap` _1.4.1_"
#environment
export CLICOLOR=1
export MANPATH=/opt/local/share/man:$MANPATH
export HISTSIZE=10000

