rm ~/.ssh/config
vagrant ssh-config | sed /StrictHostKeyChecking/d | sed /UserKnownHostsFile/d >> ~/.ssh/config
sed -i /127.0.0.1/d ~/.ssh/known_hosts
