# create feusi user
apt-get install -y whois dbus-x11
useradd -m -p $(echo "feusi" | mkpasswd -m sha-512 --stdin) -s /bin/bash feusi
usermod -aG sudo feusi