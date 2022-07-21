# !/bin/bash
# Script to install linux system tools, basic python packages and jupyter notebook server

#GENERAL LINUX
apt-get update   #updates the package index cache
apt-get upgrade -y   #updates packages
apt-get install -y bzip2 gcc git htop screen vim wget   #installs system tools


#INSTALLING MINICONDA
wget https://repo.continuum.org/miniconda/Miniconda3-latest-Linux-x86_64.sh -O \ 
  Miniconda.sh
bash Miniconda.sh -b   #installs miniconda
rm Miniconda.sh       #removes miniconda installer
#prepends the new path for current session
export PATH="/root/miniconda3/bin:$PATH"
#prepends the new path in the shell configuration
echo ". /root/miniconda3/etc/profile.d/conda.sh" >> ~/.bashrc
echo "conda actiavte" >> ~/.bashrc

#INSTALLING PYTHON LIBRARIES
# More packages can be installed depending on the use case
conda update -y conda   #update conda if required
conda create -y -n DigitalOcean python=3.7    #create an environment
source actiavte DigitalOcean          #actiavtes the new environment
conda install -y jupyter      #interactive data analytics in the browser
conda install pytables         #wrapper for HDF5 binary storage
conda install -y pandas      #data analytics packages
conda install -y matplotlib     #standard plotting library
conda install -y scikit-learn  # machine learning library
conda install -y openpyxl  # library for Excel interaction
conda install -y pyyaml  # library to manage YAML files

pip install --upgrade pip  # upgrades the package manager
pip install cufflinks  # combining plotly with pandas

# COPYING FILES AND CREATING DIRECTORIES
mkdir /root/.jupyter
mv /root/jupyter_notebook_config.py /root/.jupyter/
