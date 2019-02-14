function vssh --description 'SSH into a vagrant VM and immediately run sudo -i'
  command vagrant ssh $argv -c 'sudo -i; cd'
end
