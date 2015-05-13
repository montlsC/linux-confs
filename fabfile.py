from fabric.api import local, env, lcd

env['rootdir'] = local('pwd', capture=True)

def install_vim():
	local('cp ' + env.rootdir + '/datafile/.vimrc ~/.vimrc')
	local('git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim')
	local('vim +PluginInstall +qall')

def install_finalterm():
    local('git clone https://github.com/p-e-w/finalterm.git')
    with lcd('cd finalterm'):
        local('mkdir build')
        with lcd('cd build'):
            local('cmake ..')
            local('make')
            local('sudo make install')
    local('rm -rf finalterm')
    
def install_fonts():
    local('sudo ln -sf /etc/fonts/conf.avail/48-localmac.conf /etc/fonts/conf.d/48-localmac.conf')
    local('sudo mkdir -p /usr/share/fonts/monaco')
    with lcd('/usr/share/fonts/monaco'):
        local('sudo wget -c https://github.com/cstrap/monaco-font/raw/master/Monaco_Linux.ttf')
        local('sudo chmod 644 Monaco_Linux.ttf')
        local('sudo mkfontscale')
        local('sudo mkfontdir')
        local('fc-cache -fv')

def install_zsh():
    local('sudo chsh -s /bin/zsh')

def install_vision():
    local('sudo yum groupinstall "Development Tools"')
    local('sudo yum install cmake')
    local('sudo yum install gtk2-devel')
    local('sudo yum install pkgconfig')
    local('sudo yum install numpy')
    local('sudo ffmpeg')

def install_all():
    install_vim()
    install_fonts():
    install_zsh():
