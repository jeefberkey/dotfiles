function box --description 'SSH into the box and immediately run sudo -s;cd'
  command sshpass -p password ssh -t kesalaadmin@192.168.50.1 'sudo -s'
end
