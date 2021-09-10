function pacman-clean --wraps='sudo pacman -Rcns (pacman -Qdtq)' --description 'alias pacman-clean=sudo pacman -Rcns (pacman -Qdtq)'
  sudo pacman -Rcns (pacman -Qdtq) $argv; 
end
