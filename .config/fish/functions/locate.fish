function locate --wraps='getent ahosts' --description 'alias locate=getent ahosts'
  getent ahosts $argv
        
end
