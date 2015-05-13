:<<Comment
if [ -n 'lsb_release -d|grep "Ubuntu 12.04"' ]
then
	./init_scripts/init_fab_ubuntu1204.sh
fi
Comment

if [ -n 'lsb_release -d|grep "Ubuntu 14.04"']
then
	./init_scripts/init_fab_ubuntu1404.sh
fi

