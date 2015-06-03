sudo apt-get update
sudo apt-get -y upgrade

# Install basic tools
sudo apt-get -y install vim git  htop

# Install build tools 
sudo apt-get -y install build-essential cmake rabbitmq-server

# Get python libs


sudo apt-get -y install python-pip python-dev ipython ipython-notebook vtk6 libvtk6-dev libblas-dev liblapack-dev gfortran screen

sudo pip install virtualenv

sudo pip install numpy scipy scikit-learn networkx requests celery ConfigParser voluptuous nose matplotlib.pylab

mkdir source
cd source

git clone git@github.inside.nicta.com.au:jvial/geoprior.git
git clone git@github.inside.nicta.com.au:jvial/flopy-usg.git

cd flopy-usg
python setup.py install
