function fish_right_prompt
  set -l exit_code $status

  if test $exit_code -ne 0
    set_color -o red
  else
    set_color -o green
  end
  printf ' %d' $exit_code
  set_color yellow
  printf ' < %s' (date +%H:%M:%S)
  set_color normal
end
