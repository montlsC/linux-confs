

cp /etc/apt/sources.list /etc/apt/sources.list.backup

echo 'deb http://mirrors.163.com/ubuntu/ precise main restricted' > /etc/apt/sources.list

echo 'deb-src http://mirrors.163.com/ubuntu/ precise main restricted' >> /etc/apt/sources.list
echo 'deb http://mirrors.163.com/ubuntu/ precise-updates main restricted'  >> /etc/apt/sources.list
echo 'deb-src http://mirrors.163.com/ubuntu/ precise-updates main restricted'  >> /etc/apt/sources.list 
echo 'deb http://mirrors.163.com/ubuntu/ precise universe'  >> /etc/apt/sources.list
echo 'deb-src http://mirrors.163.com/ubuntu/ precise universe'  >> /etc/apt/sources.list
echo 'deb http://mirrors.163.com/ubuntu/ precise-updates universe'  >> /etc/apt/sources.list
echo 'deb-src http://mirrors.163.com/ubuntu/ precise-updates universe'  >> /etc/apt/sources.list
echo 'deb http://mirrors.163.com/ubuntu/ precise multiverse'  >> /etc/apt/sources.list
echo 'deb-src http://mirrors.163.com/ubuntu/ precise multiverse'  >> /etc/apt/sources.list
echo 'deb http://mirrors.163.com/ubuntu/ precise-updates multiverse'  >> /etc/apt/sources.list
echo 'deb-src http://mirrors.163.com/ubuntu/ precise-updates multiverse'  >> /etc/apt/sources.list
echo 'deb http://mirrors.163.com/ubuntu/ precise-backports main restricted universe multiverse'  >> /etc/apt/sources.list
echo 'deb-src http://mirrors.163.com/ubuntu/ precise-backports main restricted universe multiverse'  >> /etc/apt/sources.list
echo 'deb http://mirrors.163.com/ubuntu/ precise-security main restricted'  >> /etc/apt/sources.list
echo 'deb-src http://mirrors.163.com/ubuntu/ precise-security main restricted'  >> /etc/apt/sources.list
echo 'deb http://mirrors.163.com/ubuntu/ precise-security universe'  >> /etc/apt/sources.list
echo 'deb-src http://mirrors.163.com/ubuntu/ precise-security universe'  >> /etc/apt/sources.list
echo 'deb http://mirrors.163.com/ubuntu/ precise-security multiverse'  >> /etc/apt/sources.list
echo 'deb-src http://mirrors.163.com/ubuntu/ precise-security multiverse'  >> /etc/apt/sources.list
echo 'deb http://extras.ubuntu.com/ubuntu precise main' >> /etc/apt/sources.list

apt-get update

apt-get -y install gcc vim git curl wget
apt-get -y install python-dev python-pip 

sudo apt-get -y install python-virtualenv
sudo pip install fabric
