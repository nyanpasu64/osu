function debug --wraps='DEBUGINFOD_URLS="https://debuginfod.archlinux.org/"' --description 'alias debug=DEBUGINFOD_URLS="https://debuginfod.archlinux.org/"'
  DEBUGINFOD_URLS="https://debuginfod.archlinux.org/" $argv; 
end
