function wsync --wraps='watch -d grep -e Dirty: -e Writeback: /proc/meminfo' --wraps='watch -n1 grep -e Dirty: -e Writeback: /proc/meminfo' --description 'alias wsync=watch -n1 grep -e Dirty: -e Writeback: /proc/meminfo'
  watch -n1 grep -e Dirty: -e Writeback: /proc/meminfo $argv; 
end
