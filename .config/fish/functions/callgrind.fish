function callgrind --wraps='valgrind --tool=callgrind' --description 'alias callgrind=valgrind --tool=callgrind'
  valgrind --tool=callgrind $argv; 
end
