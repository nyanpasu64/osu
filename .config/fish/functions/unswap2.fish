function unswap2
sudo sh -c 'unswap-perl & pid=$! ; swapoff -a ; swapon -a ; wait $pid'
end
