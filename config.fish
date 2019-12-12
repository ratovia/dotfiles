export PATH="$HOME/.rbenv/shims:$PATH"
export EDITOR="nvim"
alias vim="nvim"
alias vi="nvim"
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
  ls /Users/ratovia/workspace/techexpert/ | peco | read foo
  if [ $foo ]
    commandline "cd /Users/ratovia/workspace/techexpert/$foo"
  else
    commandline ''
  end
end

function fish_user_key_bindings
   bind \cc peco-git-checkout
   bind \cr peco_select_history_order
   bind \cf peco_workspace_change
end



alias checkout=peco-git-checkout
alias c="clear"
