function fish_prompt --description 'Write out the prompt'
  if [ $status -eq 0 ]
  else
    printf (error_line)
  end
  printf (create_line)
  printf (git_branch_line)
  printf (last_of_line)
end

function fish_right_prompt 
  date +"%H:%M"
end

function error_line
  set color '81' # 水色
  set background_color '240' # グレー
  set line_style (tput sgr0 && tput bold && tput bold && tput setaf $color && tput setab $background_color)
  set error_line "$line_style !! "
  printf $error_line
end

function create_line
  set separater ''
  set pwd_path (prompt_pwd)
  set color '81' # 水色
  set background_color '240' # グレー
  
  set line_style (tput sgr0 && tput bold && tput setaf $color && tput setab $background_color)
  set set_secondary_line (tput sgr0 && tput setaf $fours_color && tput setab $background_color)

  printf "$line_style$separater $pwd_path"
end

function git_branch_line
  set separater ''
  set git_dirty_color '212' # ピンク
  set background_color '240' # グレー
  set color '10' # みどり
  set line_style (tput sgr0 && tput bold && tput setaf $color && tput setab $background_color)
  set dirty_line_style (tput sgr0 && tput bold && tput setaf $git_dirty_color && tput setab $background_color)

  set branch (git branch 2> /dev/null | grep -e '\* ' | sed 's/^..\(.*\)/\1/')
  if test -n "$branch"
    set state (git status --porcelain)
    if test -n "$state"
      printf " $line_style$separater $dirty_line_style$branch $line_style$separater"
    else
      printf " $line_style$separater $branch $separater"
    end
  else
    printf " "
  end
end

function last_of_line
  set separater ''
  set background_color '240' # グレー
  set set_background (tput sgr0 && tput setaf $background_color)
  set set_end_line (tput sgr0)

  printf "$set_background$separater$set_end_line "
end