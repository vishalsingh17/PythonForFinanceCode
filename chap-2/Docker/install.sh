# !/bin/bash
# Script to install Linun system tools and basic python components
# GENRAL LINUX
apt-get update   #update the package index cache
apt-get upgrade -y  #upgrade all packages installed

#INTALL MINICONDA
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O Miniconda.sh      #download the miniconda script
bash Miniconda.sh -b     #install miniconda
rm -rf Miniconda.sh	   #remove the miniconda script
export PATH="/root/miniconda3/bin:$PATH"	   #set the path to the miniconda bin directory

#INSTALL PYTHON LIBRARIES
conda update -y conda python     #update the conda and python environment
conda install -y pandas      #install pandas
conda install -y ipython      #install ipython shell
