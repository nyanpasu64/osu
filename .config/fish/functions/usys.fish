# Defined via `source`
function usys --wraps='systemctl --user' --description 'alias usys=systemctl --user'
  systemctl --user $argv; 
end
