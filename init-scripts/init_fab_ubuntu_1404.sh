

cp /etc/apt/sources.list /etc/apt/sources.list.backup

echo 'deb http://mirrors.163.com/ubuntu/ trusty main restricted' > /etc/apt/sources.list

echo 'deb-src http://mirrors.163.com/ubuntu/ trusty main restricted' >> /etc/apt/sources.list
echo 'deb http://mirrors.163.com/ubuntu/ trusty-updates main restricted'  >> /etc/apt/sources.list
echo 'deb-src http://mirrors.163.com/ubuntu/ trusty-updates main restricted'  >> /etc/apt/sources.list 
echo 'deb http://mirrors.163.com/ubuntu/ trusty universe'  >> /etc/apt/sources.list
echo 'deb-src http://mirrors.163.com/ubuntu/ trusty universe'  >> /etc/apt/sources.list
echo 'deb http://mirrors.163.com/ubuntu/ trusty-updates universe'  >> /etc/apt/sources.list
echo 'deb-src http://mirrors.163.com/ubuntu/ trusty-updates universe'  >> /etc/apt/sources.list
echo 'deb http://mirrors.163.com/ubuntu/ trusty multiverse'  >> /etc/apt/sources.list
echo 'deb-src http://mirrors.163.com/ubuntu/ trusty multiverse'  >> /etc/apt/sources.list
echo 'deb http://mirrors.163.com/ubuntu/ trusty-updates multiverse'  >> /etc/apt/sources.list
echo 'deb-src http://mirrors.163.com/ubuntu/ trusty-updates multiverse'  >> /etc/apt/sources.list
echo 'deb http://mirrors.163.com/ubuntu/ trusty-backports main restricted universe multiverse'  >> /etc/apt/sources.list
echo 'deb-src http://mirrors.163.com/ubuntu/ trusty-backports main restricted universe multiverse'  >> /etc/apt/sources.list
echo 'deb http://mirrors.163.com/ubuntu/ trusty-security main restricted'  >> /etc/apt/sources.list
echo 'deb-src http://mirrors.163.com/ubuntu/ trusty-security main restricted'  >> /etc/apt/sources.list
echo 'deb http://mirrors.163.com/ubuntu/ trusty-security universe'  >> /etc/apt/sources.list
echo 'deb-src http://mirrors.163.com/ubuntu/ trusty-security universe'  >> /etc/apt/sources.list
echo 'deb http://mirrors.163.com/ubuntu/ trusty-security multiverse'  >> /etc/apt/sources.list
echo 'deb-src http://mirrors.163.com/ubuntu/ trusty-security multiverse'  >> /etc/apt/sources.list
echo 'deb http://extras.ubuntu.com/ubuntu trusty main' >> /etc/apt/sources.list

apt-get update

apt-get -y install gcc vim git curl wget
apt-get -y install python-dev python-pip 

sudo apt-get -y install python-virtualenv
sudo pip install fabric
