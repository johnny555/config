sudo apt-get update
sudo apt-get -y upgrade

# Install basic tools
sudo apt-get -y install vim git chromium-browser vim-gnome  htop

# Install build tools 
sudo apt-get -y install build-essential cmake

# Install latex
sudo apt-get -y install latexmk texlive-latex-recommended texlive-latex-extra texlive-science texlive-fonts-recommended

# Install fun
sudo apt-get -y install darktable gimp

# Install other

sudo apt-get -y install pandoc freetype2-demos gnome-raw-thumbnailer libfreetype6-dev openssh-server


# Get python libs
sudo apt-get -y install python-pip python-dev ipython ipython-notebook vtk6

sudo pip install virtualenv

sudo pip install numpy scipy scikit-learn matplotlib networkx mayavi

# Setup the vim stuff
ln -s .vimrc ~/
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

cd ~/.vim/bundle/YouCompleteMe
./install

# Setup ssh stuff
mkdir ~/.ssh/tmp
cp sshconfig ~/.ssh/config

# Install hyde for website 
cd ~/source
git clone https://github.com/hyde/hyde.git 
cd hyde
sudo python setup.py install
cd ../config

# Setup latex
ln -s .latexmkrc ~/.latexmkrc
# setup git
ln -s .gitconfig ~/.gitconfig
