
if [ -n 'lsb_release -d|grep "Ubuntu 12.04"' ]
then 
    ./init-scripts/init_fab_ubuntu_1204.sh
fi

if [ -n 'lsb_release -d|grep "Ubuntu 14.04"' ]
then 
    ./init-scripts/init_fab_ubuntu_1404.sh
fi

if [ -n 'lsb_release -d|grep "Centos"' ]
then 
    ./init-scripts/init_fab_centos_7.sh
fi

