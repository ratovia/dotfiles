export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
. (pyenv init - | psub)

export PATH="$HOME/.rbenv/shims:$PATH"
export PATH="$HOME/.shellscript:$PATH"
export PATH="/usr/local/opt/mysql@5.6/bin:$PATH"
export EDITOR="nvim"
alias vim="nvim"
alias c="clear"
alias be="bundle exec"

set fish_color_command        brgreen

#peco
function peco-git-checkout
   git branch -a | peco | tr -d ' ' | read branch
   echo $branch
   if [ $branch ]
       if contains $branch "remotes/"
           set -l b (echo $branch | awk -F'/' '{print $3}')
           git checkout -b $b $branch
       else
           git checkout $branch
       end
   end
   commandline -f repaint
end

function peco_select_history_order
  if test (count $argv) = 0
    set peco_flags --layout=top-down
  else
    set peco_flags --layout=bottom-up --query "$argv"
  end

  history|peco $peco_flags|read foo

  if [ $foo ]
    commandline $foo
  else
    commandline ''
  end
end

function peco_workspace_change
  ls /Users/tech-camp/workspace/ | peco | read foo
  if [ $foo ]
    commandline "cd /Users/tech-camp/workspace/$foo"
  else
    commandline ''
  end
  commandline -f repaint
end

function fish_user_key_bindings
   bind \cc peco-git-checkout
   bind \cr peco_select_history_order
   bind \cf peco_workspace_change
end



alias checkout=peco-git-checkout
