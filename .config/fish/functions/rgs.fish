# Defined via `source`
function rgs --wraps='rg --sort-files' --description 'alias rgs=rg --sort-files'
  rg --sort-files $argv; 
end
