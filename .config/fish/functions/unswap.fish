function unswap --wraps=sudo\ sh\ -c\ \'unswap-perl\ \;\ swapoff\ -a\ \;\ swapon\ -a\' --description alias\ unswap=sudo\ sh\ -c\ \'unswap-perl\ \;\ swapoff\ -a\ \;\ swapon\ -a\'
  sudo sh -c 'unswap-perl ; swapoff -a ; swapon -a' $argv; 
end
