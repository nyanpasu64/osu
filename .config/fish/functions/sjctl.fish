function sjctl --wraps='journalctl --system' --description 'alias sjctl=journalctl --system'
  journalctl --system $argv
        
end
