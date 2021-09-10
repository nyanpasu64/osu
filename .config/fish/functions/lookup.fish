function lookup --wraps='getent ahosts' --description 'alias lookup=getent ahosts'
  getent ahosts $argv; 
end
