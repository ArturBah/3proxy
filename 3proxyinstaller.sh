apt-get update
apt-get install -y build-essential nano wget tar gzip
wget --no-check-certificate https://github.com/z3APA3A/3proxy/archive/3proxy-0.8.8.tar.gz
tar xzf 3proxy-0.8.8.tar.gz
cd 3proxy-3proxy-0.8.8
make -f Makefile.Linux
cd src
mkdir /etc/3proxy/
cp 3proxy /etc/3proxy/
cd ..
cd ..
rm 3proxy-0.8.8.tar.gz
rm -r 3proxy-3proxy-0.8.8
cd /etc/3proxy/
wget --no-check-certificate https://github.com/arturbah/3proxy/raw/master/3proxy.cfg
chmod 600 /etc/3proxy/3proxy.cfg
wget --no-check-certificate https://github.com/arturbah/3proxy/raw/master/.proxyauth
chmod 444 /etc/3proxy/.proxyauth
mkdir /var/log/3proxy
chmod 666 /var/log/3proxy
cd /etc/init.d/
wget --no-check-certificate https://raw.github.com/arturbah/3proxy/master/3proxyinit
chmod  +x /etc/init.d/3proxyinit
update-rc.d 3proxyinit defaults
