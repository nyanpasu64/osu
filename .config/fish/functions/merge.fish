# Defined via `source`
function merge --wraps='history --merge' --description 'alias merge=history --merge'
  history --merge $argv; 
end
