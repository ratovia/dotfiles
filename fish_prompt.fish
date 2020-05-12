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
  set -l color '15' # 白
  set -l background_color '1' # 赤
  set -l line_style (tput sgr0 && tput bold && tput bold && tput setaf $color && tput setab $background_color)
  set -l error_line "$line_style ERROR "
  printf $error_line
end

function create_line
  set -l separater ''
  set -l pwd_path (prompt_pwd)
  set -l color '81' # 水色
  set -l background_color '240' # グレー
  
  set -l line_style (tput sgr0 && tput bold && tput setaf $color && tput setab $background_color)
  set -l set_secondary_line (tput sgr0 && tput setaf $fours_color && tput setab $background_color)

  printf "$line_style$separater $pwd_path"
end

function git_branch_line
  set -l separater ''
  set -l git_dirty_color '212' # ピンク
  set -l background_color '240' # グレー
  set -l color '10' # みどり
  set -l line_style (tput sgr0 && tput bold && tput setaf $color && tput setab $background_color)
  set -l dirty_line_style (tput sgr0 && tput bold && tput setaf $git_dirty_color && tput setab $background_color)

  set -l branch (git branch 2> /dev/null | grep -e '\* ' | sed 's/^..\(.*\)/\1/')
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
  set -l separater ''
  set -l background_color '240' # グレー
  set -l set_background (tput sgr0 && tput setaf $background_color)
  set -l set_end_line (tput sgr0)

  printf "$set_background$separater$set_end_line "
end
