function yadm-add --wraps='yadm add -u; yadm add ~/.config/fish' --description 'alias yadm-add=yadm add -u; yadm add ~/.config/fish'
  yadm add -u; yadm add ~/.config/fish $argv; 
end
