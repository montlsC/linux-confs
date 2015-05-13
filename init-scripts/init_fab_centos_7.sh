
# disable fastestmirror plugin
sed -i.backup 's/^enabled=1/enabled=0/' /etc/yum/pluginconf.d/fastestmirror.conf

# backup
mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.backup

# use aliyun mirror
wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo

# make cache
yum makecache

# install python-devel and python-setuptools
yum -y install gcc vim tree git zsh tmux
yum -y install python-devel python-setuptools 

# install pip
curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"
python get-pip.py 

# install virtualenv fabric
pip install virtualenv fabric jinja2
